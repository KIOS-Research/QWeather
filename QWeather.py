# -*- coding: utf-8 -*-
"""
/***************************************************************************
 QWeather
                                 A QGIS plugin
 Weather Info
                              -------------------
        begin                : 2018-05-30
        git sha              : $Format:%H$
        copyright            : (C) 2018 by KIOS Research Center
        email                : mariosmsk@gmail.com
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/
"""
from qgis.PyQt.QtWidgets import (QAction, QFileDialog, QMessageBox, QDialog, QToolButton, QMenu, QWidgetAction, QComboBox)
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtCore import (QSettings, QTranslator, qVersion, QCoreApplication, Qt)
from qgis.core import (QgsProject, QgsRectangle, QgsTask, QgsApplication, Qgis, QgsMapLayerStyle, QgsMessageLog)
# Initialize Qt resources from file resources.py
from . import resources
import os.path
import re
import json

# Yahoo API
import time
import uuid
import urllib.parse
import urllib.request
import hmac
import hashlib
from base64 import b64encode
import sys
from qgis.PyQt import uic

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'weather.ui'))


class QWeatherDialog(QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        # """Constructor."""
        QDialog.__init__(self, None, Qt.WindowStaysOnTopHint)
        super(QWeatherDialog, self).__init__(parent)
        self.setupUi(self)


class QWeather:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):
        """Constructor.

        :param iface: An interface instance that will be passed to this class
            which provides the hook by which you can manipulate the QGIS
            application at run time.
        :type iface: QgsInterface
        """
        # Save reference to the QGIS interface
        self.iface = iface
        # initialize plugin directory
        self.plugin_dir = os.path.dirname(__file__)
        # initialize locale
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'QWeather_{}.qm'.format(locale))

        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)

            if qVersion() > '4.3.3':
                QCoreApplication.installTranslator(self.translator)


        # Declare instance attributes
        self.actions = []
        self.menu = self.tr(u'&QWeather')
        # TODO: We are going to let the user set this up in a future iteration
        self.toolbar = self.iface.addToolBar(u'QWeather')
        self.toolbar.setObjectName(u'QWeather')
        self.key1 = '9Q2gyTzBLVGVSTWdoJnM9Y29uc'

        self.toolButton = QToolButton()
        self.toolButton.setMenu(QMenu())
        self.toolButton.setPopupMode(QToolButton.MenuButtonPopup)
        self.toolbar.addWidget(self.toolButton)

    # noinspection PyMethodMayBeStatic
    def tr(self, message):
        """Get the translation for a string using Qt translation API.

        We implement this ourselves since we do not inherit QObject.

        :param message: String for translation.
        :type message: str, QString

        :returns: Translated version of message.
        :rtype: QString
        """
        # noinspection PyTypeChecker,PyArgumentList,PyCallByClass
        return QCoreApplication.translate('QWeather', message)


    def add_action(
        self,
        icon_path,
        text,
        callback,
        enabled_flag=True,
        add_to_menu=True,
        add_to_toolbar=True,
        status_tip=None,
        whats_this=None,
        parent=None):
        """Add a toolbar icon to the toolbar.

        :param icon_path: Path to the icon for this action. Can be a resource
            path (e.g. ':/plugins/foo/bar.png') or a normal file system path.
        :type icon_path: str

        :param text: Text that should be shown in menu items for this action.
        :type text: str

        :param callback: Function to be called when the action is triggered.
        :type callback: function

        :param enabled_flag: A flag indicating if the action should be enabled
            by default. Defaults to True.
        :type enabled_flag: bool

        :param add_to_menu: Flag indicating whether the action should also
            be added to the menu. Defaults to True.
        :type add_to_menu: bool

        :param add_to_toolbar: Flag indicating whether the action should also
            be added to the toolbar. Defaults to True.
        :type add_to_toolbar: bool

        :param status_tip: Optional text to show in a popup when mouse pointer
            hovers over the action.
        :type status_tip: str

        :param parent: Parent widget for the new action. Defaults None.
        :type parent: QWidget

        :param whats_this: Optional text to show in the status bar when the
            mouse pointer hovers over the action.

        :returns: The action that was created. Note that the action is also
            added to self.actions list.
        :rtype: QAction
        """

        # Create the dialog (after translation) and keep reference

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)

        if whats_this is not None:
            action.setWhatsThis(whats_this)

        if add_to_toolbar:
            self.toolbar.addAction(action)

        if add_to_menu:
            self.iface.addPluginToMenu(
                self.menu,
                action)

        self.actions.append(action)

        return action

    def _generate_signature(self, key, data):
        key_bytes = bytes(key, 'utf-8')
        data_bytes = bytes(data, 'utf-8')
        signature = hmac.new(
            key_bytes,
            data_bytes,
            hashlib.sha1
        ).digest()
        return b64encode(signature).decode()

    def get_yahoo_weather(self, location, temp_type, app_id, consumer_key, consumer_secret, url='https://weather-ydn-yql.media.yahoo.com/forecastrss'):
        # Basic info
        method = 'GET'
        concat = '&'
        query = {
            'location': location,
            'format': 'json',
            'u': temp_type
        }
        oauth = {
            'oauth_consumer_key': consumer_key,
            'oauth_nonce': uuid.uuid4().hex,
            'oauth_signature_method': 'HMAC-SHA1',
            'oauth_timestamp': str(int(time.time())),
            'oauth_version': '1.0'
        }

        # Prepare signature string (merge all params and SORT them)
        merged_params = query.copy()
        merged_params.update(oauth)
        sorted_params = [k + '=' + urllib.parse.quote(merged_params[k], safe='') for k in sorted(merged_params.keys())]
        signature_base_str = method + concat + urllib.parse.quote(url, safe='') + concat + urllib.parse.quote(
            concat.join(sorted_params), safe='')

        # Generate signature
        composite_key = urllib.parse.quote(
            consumer_secret,
            safe=''
        ) + concat
        oauth_signature = self._generate_signature( composite_key, signature_base_str )

        # Prepare Authorization header
        oauth['oauth_signature'] = oauth_signature
        auth_header = (
                'OAuth ' +
                ', '.join(
                    [
                        '{}="{}"'.format(k, v)
                        for k, v in oauth.items()
                    ]
                )
        )

        # Send request
        url = url + '?' + urllib.parse.urlencode(query)
        request = urllib.request.Request(url)
        request.add_header('Authorization', auth_header)
        request.add_header('X-Yahoo-App-Id', app_id)
        response = urllib.request.urlopen(request).read()
        return json.loads(response)

    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""
        icon_path = ':/plugins/QWeather/weather.png'
        self.mainButton = QAction(QIcon(icon_path), "Weather Info", self.iface.mainWindow())
        self.mainButton.triggered.connect(self.run)

        icon_path = ':/plugins/QWeather/icons/reload.png'
        self.reloadButton = self.add_action(
            icon_path,
            text=self.tr(u'Reload QWeather layer'),
            callback=self.reloadWeather,
            parent=self.iface.mainWindow())

        self.style_temperature_btn = QAction(QIcon(''), "Temperature", self.iface.mainWindow())
        self.style_temperature_btn.setText("Temperature")
        self.style_temperature_btn.triggered.connect(self.style_temperature)

        self.style_direction_btn = QAction(QIcon(''), "Direction", self.iface.mainWindow())
        self.style_direction_btn.setText("Direction")
        self.style_direction_btn.triggered.connect(self.style_direction)

        self.style_humidity_btn = QAction(QIcon(''), "Humidity", self.iface.mainWindow())
        self.style_humidity_btn.setText("Humidity")
        self.style_humidity_btn.triggered.connect(self.style_humidity)

        menu = self.toolButton.menu()
        menu.addAction(self.mainButton)
        menu.addAction(self.style_temperature_btn)
        menu.addSeparator()
        menu.addAction(self.style_direction_btn)
        menu.addAction(self.style_humidity_btn)
        self.toolButton.setDefaultAction(self.mainButton)

        self.dlg = QWeatherDialog()
        #self.dlg.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)
        self.key2 = 'VtZXJzZWNyZXQmc3Y9MCZ4PTZl'
        self.dlg.ok.clicked.connect(self.ok)
        self.dlg.closebutton.clicked.connect(self.close)
        self.dlg.toolButtonImport.clicked.connect(self.toolButtonImport)
        self.dlg.checkBox.clicked.connect(self.customBox)
        self.csvFile = None
        self.current = 'World Capitals'
        self.layerTemp = "QWeather"
        self.reload = False
        self.dlg.checkBox.setChecked(True)
        self.reloadButton.setEnabled(False)
        self.app_id = 'IyELbl3e'
        self.consumer_key = 'dj0yJmk' + self.key1 + '3' + self.key2
        self.consumer_secret = 'e9962f3287764230d163045f737f9ad81428cdcc'

    def style_humidity(self):
        try:
            self.QWeather.styleManager().setCurrentStyle('humidity')
        except:
            pass

    def style_temperature(self):
        try:
            self.QWeather.styleManager().setCurrentStyle('temperature')
        except:
            pass

    def style_direction(self):
        try:
            self.QWeather.styleManager().setCurrentStyle('direction')
        except:
            pass

    def reloadWeather(self):
        self.reload = True
        if self.csvFile is None:
            self.csvFile = os.path.join(self.plugin_dir, 'World Capitals.csv')
        self.dlg.imp.setText(self.csvFile)
        self.ok()

    def unload(self):
        """Removes the plugin menu item and icon from QGIS GUI."""
        for action in self.actions:
            self.iface.removePluginMenu(
            self.tr(u'&QWeather'),
            action)
            self.iface.removeToolBarIcon(action)
         # remove the toolbar
        del self.toolbar

    def customBox(self):
        if self.dlg.checkBox.isChecked():
            self.dlg.comboBox.setEnabled(False)
            self.dlg.toolButtonImport.setEnabled(True)
            self.dlg.imp.setEnabled(True)
        else:
            if 'Countries.csv' in self.dlg.imp.text():
                self.csvFile = os.path.join(self.plugin_dir, 'World Capitals.csv')
                self.dlg.imp.setText(self.csvFile)

            self.dlg.comboBox.setEnabled(True)
            self.dlg.toolButtonImport.setEnabled(False)
            self.dlg.imp.setEnabled(False)

    def run(self):
        self.dlg.ok.setEnabled(True)
        self.dlg.closebutton.setEnabled(True)
        self.dlg.toolButtonImport.setEnabled(True)
        if self.csvFile is None:
            self.csvFile = os.path.join(self.plugin_dir, 'World Capitals.csv')
        self.dlg.imp.setText(self.csvFile)
        self.dlg.Celsius.setChecked(True)
        self.dlg.progressBar.setValue(0)

        self.customBox()

        self.dlg.comboBox.clear()
        db_list = ['World Capitals', 'Afghanistan', 'Aland', 'Albania', 'Algeria', 'American Samoa', 'Andorra',
                   'Angola', 'Antarctica', 'Antigua and Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia',
                   'Austria', 'Azerbaijan', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize',
                   'Benin', 'Bermuda', 'Bhutan', 'Bolivia', 'Bosnia and Herzegovina', 'Botswana', 'Brazil',
                   'Brunei', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cambodia', 'Cameroon', 'Canada', 'Cape Verde',
                   'Cayman Islands', 'Central African Republic', 'Chad', 'Chile', 'China', 'Colombia', 'Comoros',
                   'Congo (Brazzaville)', 'Congo (Kinshasa)', 'Cook Islands', 'Costa Rica', 'Croatia', 'Cuba',
                   'Curacao', 'Cyprus', 'Czech Republic', 'Denmark', 'Djibouti', 'Dominica', 'Dominican Republic',
                   'East Timor', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia',
                   'Ethiopia', 'Falkland Islands', 'Faroe Islands', 'Federated States of Micronesia', 'Fiji',
                   'Finland', 'France', 'French Polynesia', 'Gabon', 'Georgia', 'Germany', 'Ghana', 'Gibraltar',
                   'Greece', 'Greenland', 'Grenada', 'Guam', 'Guatemala', 'Guinea', 'Guinea Bissau', 'Guyana',
                   'Haiti', 'Honduras', 'Hong Kong S.A.R.', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran',
                   'Iraq', 'Ireland', 'Isle of Man', 'Israel', 'Italy', 'Ivory Coast', 'Jamaica', 'Japan', 'Jordan',
                   'Kazakhstan', 'Kenya', 'Kiribati', 'Kosovo', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon',
                   'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macau S.A.R', 'Macedonia',
                   'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta', 'Marshall Islands', 'Mauritania', 'Mauritius',
                   'Mexico', 'Moldova', 'Monaco', 'Mongolia', 'Montenegro', 'Morocco', 'Mozambique', 'Myanmar', 'Namibia', 'Nepal',
                   'Netherlands', 'New Caledonia', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'North Korea', 'Northern Mariana Islands',
                   'Norway', 'Oman', 'Pakistan', 'Palau', 'Palestine', 'Panama', 'Papua New Guinea', 'Paraguay', 'Peru', 'Philippines',
                   'Poland', 'Portugal', 'Puerto Rico', 'Qatar', 'Romania', 'Russia', 'Rwanda', 'Saint Kitts and Nevis', 'Saint Lucia',
                   'Saint Vincent and the Grenadines', 'Samoa', 'San Marino', 'Sao Tome and Principe', 'Saudi Arabia', 'Senegal', 'Serbia',
                   'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands', 'Somalia', 'Somaliland',
                   'South Africa', 'South Georgia and the Islands', 'South Korea', 'South Sudan', 'Spain', 'Sri Lanka', 'Sudan',
                   'Suriname', 'Svalbard and Jan Mayen Islands', 'Swaziland', 'Sweden', 'Switzerland', 'Syria', 'Taiwan', 'Tajikistan',
                   'Tanzania', 'Thailand', 'The Bahamas', 'The Gambia', 'Togo', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey',
                   'Turkmenistan', 'Turks and Caicos Islands', 'Tuvalu', 'Uganda', 'Ukraine', 'United Arab Emirates', 'United Kingdom',
                   'United States Virgin Islands', 'USA', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Vatican (Holy Sea)', 'Venezuela', 'Vietnam',
                   'Western Sahara', 'Yemen', 'Zambia', 'Zimbabwe']

        self.dlg.comboBox.addItems(db_list)
        self.dlg.comboBox.setCurrentText(self.current)
        if self.dlg.isVisible():
            self.dlg.close()
            self.dlg.show()
        else:
            self.dlg.show()

    def close(self):
        self.dlg.close()

    def toolButtonImport(self):
        self.csvFile = QFileDialog.getOpenFileName(None, "Choose the file",
                                                   os.path.join(os.path.join(os.path.expanduser('~')),
                                                                'Desktop'), "(*.csv)")
        if self.csvFile[0] == "":
            self.csvFile = os.path.join(self.plugin_dir, 'World Capitals.csv')
            self.dlg.imp.setText(self.csvFile)
            return

        self.csvFile = self.csvFile[0]
        self.dlg.imp.setText(self.csvFile)

    def selectOutp(self):
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Warning)
        msgBox.setWindowTitle('Warning')
        msgBox.setText('Please define a csv file with locations.')
        msgBox.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)
        msgBox.exec_()
        return True

    def call_import_temps_task(self):
        self.taskWeather = QgsTask.fromFunction(u'QWeather', self.import_temps_task,
                                 on_finished=self.completed, wait_time=4)
        QgsApplication.taskManager().addTask(self.taskWeather)

    def import_temps_task(self, task, wait_time):
        for i, location in enumerate(self.all_cities):
            try:
                time.sleep(.1)
                perc = (i / len(self.all_cities))*100
                self.taskWeather.setProgress(perc)
                self.dlg.progressBar.setValue(perc)
                data = self.get_yahoo_weather(
                    location.replace("'", ""), self.unit,
                    self.app_id,
                    self.consumer_key,
                    self.consumer_secret,
                    url='https://weather-ydn-yql.media.yahoo.com/forecastrss'
                )

                if data['location'] == {}:
                    continue
                fields = {}
                fieldnames = ['country', 'city', 'region', 'temperature', 'temperature_unit', 'date', 'direction', 'direction_unit', 'speed',
                               'speed_unit', 'humidity', 'humidity_unit', 'pressure', 'pressure_unit', 'visibility', 'visibility_unit', 'sunrise',
                               'sunset', 'icon', 'lat', 'lon']
                for field_init in fieldnames:
                    fields[field_init] = []
                try:
                    fields['city'] = data['location']['city']
                    fields['temperature'] = str(data['current_observation']['condition']['temperature'])
                    if not fields['temperature'].isnumeric():
                        continue
                    fields['country'] = data['location']['country'].replace('ô', 'o').replace('´', '')
                    fields['region'] = data['location']['region'].replace('´', '')
                    fields['direction'] = str(data['current_observation']['wind']['direction'])
                    fields['direction_unit'] = self.unitDirection
                    fields['speed'] = str(data['current_observation']['wind']['speed'])
                    fields['speed_unit'] = self.unitSpeed
                    fields['humidity'] = str(data['current_observation']['atmosphere']['humidity'])
                    fields['humidity_unit'] = self.unitHumidity
                    fields['pressure'] = str(data['current_observation']['atmosphere']['pressure'])
                    fields['pressure_unit'] = self.unitPressure
                    fields['visibility'] = str(data['current_observation']['atmosphere']['visibility'])
                    fields['visibility_unit'] = self.unitVisibility
                    fields['sunrise'] = str(data['current_observation']['astronomy']['sunrise'])
                    fields['sunset'] = str(data['current_observation']['astronomy']['sunset'])
                    Lon = data['location']['long']
                    Lat = data['location']['lat']
                    fields['lon'] = str(Lon)
                    fields['lat'] = str(Lat)
                    fields['date'] = time.ctime(int(str(data['current_observation']['pubDate'])))
                    try:
                        fields['icon'] = data['current_observation']['condition']['text']
                    except:
                        fields['icon'] = ' '
                except:
                    pass

                fields['temperature_unit'] = self.unit
                geo_info = {"type": "Feature",
                            "properties": fields,
                            "geometry": {"coordinates": [Lon, Lat], "type": "Point"}}
                self.geoinfo.append(geo_info)

                if self.taskWeather.isCanceled():
                    self.stopped(self.taskWeather)
                    self.taskWeather.destroyed()
                    return None
            except:
                pass
        return True

    def stopped(self, task):
        QgsMessageLog.logMessage(
            'Task "{name}" was canceled'.format(
                name=task.description()),
            'QWeather', Qgis.Info)

    def completed(self, exception, result=None):
        geojson = {"type": "FeatureCollection",
                   "name": self.layerTemp,
                   "crs": {"type": "name", "properties": {"name": "crs:OGC:1.3:CRS84"}},
                   "features": self.geoinfo}

        with open(self.outQWeatherGeoJson, 'w') as geofile:
            json.dump(geojson, geofile)

        if len(QgsProject.instance().mapLayersByName(self.layerTemp)) == 0:
            self.addQWeatherLayer()
        else:
            for x in self.iface.mapCanvas().layers():
                if x.name() == self.layerTemp:
                    self.QWeather = x
                    QgsProject.instance().removeMapLayer(self.QWeather.id())
                    self.addQWeatherLayer()
        try:
            self.QWeather.selectAll()
            self.iface.mapCanvas().zoomToSelected()
            self.QWeather.removeSelection()
        except:
            pass

        ###########################################

        self.dlg.ok.setEnabled(True)
        self.dlg.closebutton.setEnabled(True)
        if not self.dlg.checkBox.isChecked():
            self.dlg.toolButtonImport.setEnabled(False)
        else:
            self.dlg.toolButtonImport.setEnabled(True)

        self.reloadButton.setEnabled(True)
        self.dlg.progressBar.setValue(100)
        self.dlg.close()

    def addQWeatherLayer(self):
        # load qml to current style
        self.QWeather = self.iface.addVectorLayer(self.outQWeatherGeoJson,
                                                  self.layerTemp, "ogr")
        style_manager = self.QWeather.styleManager()
        # read valid style from layer
        style = QgsMapLayerStyle()
        style.readFromLayer(self.QWeather)
        self.QWeather.loadNamedStyle(os.path.join(self.plugin_dir, "icons", self.style2 + ".qml"))
        style_manager.renameStyle("default", "direction")

        style_name = "humidity"
        # add style with new name
        style_manager.addStyle(style_name, style)
        # set new style as current
        style_manager.setCurrentStyle(style_name)
        self.QWeather.loadNamedStyle(os.path.join(self.plugin_dir, "icons", "humidity.qml"))
        style_manager.renameStyle(style_name, style_name)

        style = QgsMapLayerStyle()
        style.readFromLayer(self.QWeather)
        style_name = self.style
        # add style with new name
        style_manager.addStyle(style_name, style)
        # set new style as current
        style_manager.setCurrentStyle(style_name)
        self.QWeather.loadNamedStyle(os.path.join(self.plugin_dir, "icons", self.style + ".qml"))
        style_manager.renameStyle(self.style, "temperature")

    def ok(self):
        if not self.reload:
            if self.dlg.imp.text() == '':
                if self.selectOutp():
                    return
            elif not os.path.isabs(self.dlg.imp.text()):
                if self.selectOutp():
                    return
        else:
            self.reload = False

        self.csvFile = self.dlg.imp.text()
        status = False
        if not self.dlg.checkBox.isChecked():
            self.current = self.dlg.comboBox.currentText()
            status = self.current.upper() == 'WORLD CAPITALS'
            if status:
                self.csvFile = os.path.join(self.plugin_dir, 'World Capitals.csv')

        if not self.dlg.checkBox.isChecked() and not status:
            self.csvFile = os.path.join(self.plugin_dir, 'Countries.csv')
            with open(self.csvFile, 'r') as f_all:
                self.all_cities = []
                for line in f_all:
                    mm = line.rstrip(', ').upper()
                    if self.current.upper() in mm:
                        self.all_cities.append(mm[:-1])
        else:
            try:
                with open(self.csvFile, 'r') as f:
                    self.all_cities = [line.rstrip('\n').upper() for line in f]
            except:
                msgBox = QMessageBox()
                msgBox.setIcon(QMessageBox.Warning)
                msgBox.setWindowTitle('QWeather')
                msgBox.setText('Please define a csv file path.')
                msgBox.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)
                msgBox.exec_()
                return

        self.outQWeatherGeoJson = os.path.join(self.plugin_dir, 'QWeather.geojson')
        basename = os.path.basename(self.outQWeatherGeoJson)
        self.layerTemp = basename[:-8]

        try:
            f = open(self.outQWeatherGeoJson, "w")
            f.close()
        except:
            self.selectOutp()

        self.dlg.ok.setEnabled(False)
        self.dlg.closebutton.setEnabled(False)
        self.dlg.toolButtonImport.setEnabled(False)

        if not self.iface.actionSelectRectangle().isChecked():
            self.iface.actionSelectRectangle().trigger()
        if not self.iface.actionMapTips().isChecked():
            self.iface.actionMapTips().trigger()

        if len(self.all_cities) > 1000:
            msgBox = QMessageBox()
            msgBox.setIcon(QMessageBox.Warning)
            msgBox.setWindowTitle('Warning')
            msgBox.setText('Maximum locations must be below from 1000.')
            msgBox.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)
            msgBox.exec_()
            ###########################################
            self.dlg.progressBar.setValue(100)
            self.dlg.progressBar.setValue(0)
            self.dlg.ok.setEnabled(True)
            self.dlg.closebutton.setEnabled(True)
            self.dlg.toolButtonImport.setEnabled(True)
            return

        # do stuff
        if self.dlg.Celsius.isChecked():
            self.unit = 'C'
            self.unitDirection = "degrees"
            self.unitSpeed = "km/h"
            self.unitHumidity = "%"
            self.unitVisibility = "km"
            self.unitPressure = "hPa"
            self.style = 'weather_c'
            self.style2 = 'direction_c'

        else:
            self.unit = 'F'
            self.unitDirection = "degrees"
            self.unitSpeed = "mph"
            self.unitHumidity = "%"
            self.unitVisibility = "mi"
            self.unitPressure = "psi"
            self.style = 'weather_f'
            self.style2 = 'direction_f'

        self.geoinfo = []
        self.call_import_temps_task()
        #self.import_temps_task('', '')
        #self.completed('', '')
        #self.dlg.close()
