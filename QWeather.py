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
from qgis.PyQt.QtWidgets import QAction, QFileDialog, QMessageBox
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtCore import QSettings, QTranslator, qVersion, QCoreApplication, Qt
from qgis.core import QgsMapLayerRegistry, QgsRectangle
# Initialize Qt resources from file resources.py
from . import resources
# Import the code for the dialog
from .QWeather_dialog import QWeatherDialog
import os.path
import uuid
import platform
# QWeather
import urllib
from xml.dom import minidom
import json
import re

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


    def initGui(self):
        """Create the menu entries and toolbar icons inside the QGIS GUI."""
        icon_path = ':/plugins/QWeather/weather.png'
        self.add_action(
            icon_path,
            text=self.tr(u'Weather Info'),
            callback=self.run,
            parent=self.iface.mainWindow())

        icon_path = ':/plugins/QWeather/icons/reload.png'
        self.reloadButton = self.add_action(
            icon_path,
            text=self.tr(u'Reload QWeather layer'),
            callback=self.reloadWeather,
            parent=self.iface.mainWindow())

        self.dlg = QWeatherDialog()
        self.dlg.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)

        self.dlg.ok.clicked.connect(self.ok)
        self.dlg.closebutton.clicked.connect(self.close)
        self.dlg.toolButtonImport.clicked.connect(self.toolButtonImport)
        self.dlg.checkBox.clicked.connect(self.customBox)
        self.csvFile = None
        self.current = 0
        self.layerTemp = "QWeather"
        self.reload = False
        self.dlg.checkBox.setChecked(True)
        self.reloadButton.setEnabled(False)

    def reloadWeather(self):
        #if len(QgsMapLayerRegistry.instance().mapLayersByName(self.layerTemp)) != 0:
        self.reload = True
        if self.csvFile==None:
            self.csvFile = self.plugin_dir + '/World Capitals.csv'
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
            self.dlg.comboBox.setEnabled(True)
            self.dlg.toolButtonImport.setEnabled(False)
            self.dlg.imp.setEnabled(False)

    def run(self):
        self.dlg.ok.setEnabled(True)
        self.dlg.closebutton.setEnabled(True)
        self.dlg.toolButtonImport.setEnabled(True)
        if self.csvFile==None:
            self.csvFile = self.plugin_dir + '/World Capitals.csv'
        self.dlg.imp.setText(self.csvFile)

        self.dlg.progressBar.setValue(0)
        self.dlg.Celsius.setChecked(True)

        self.customBox()

        self.dlg.comboBox.clear()
        self.db_list = ['World Capitals','Afghanistan','Aland','Albania','Algeria','American Samoa','Andorra','Angola','Antarctica','Antigua and Barbuda','Argentina','Armenia','Aruba','Australia','Austria','Azerbaijan','Bahrain','Bangladesh','Barbados','Belarus','Belgium','Belize','Benin','Bermuda','Bhutan','Bolivia','Bosnia and Herzegovina','Botswana','Brazil','Brunei','Bulgaria','Burkina Faso','Burundi','Cambodia','Cameroon','Canada','Cape Verde','Cayman Islands','Central African Republic','Chad','Chile','China','Colombia','Comoros','Congo (Brazzaville)','Congo (Kinshasa)','Cook Islands','Costa Rica','Croatia','Cuba','Curacao','Cyprus','Czech Republic','Denmark','Djibouti','Dominica','Dominican Republic','East Timor','Ecuador','Egypt','El Salvador','Equatorial Guinea','Eritrea','Estonia','Ethiopia','Falkland Islands','Faroe Islands','Federated States of Micronesia','Fiji','Finland','France','French Polynesia','Gabon','Georgia','Germany','Ghana','Gibraltar','Greece','Greenland','Grenada','Guam','Guatemala','Guinea','Guinea Bissau','Guyana','Haiti','Honduras','Hong Kong S.A.R.','Hungary','Iceland','India','Indonesia','Iran','Iraq','Ireland','Isle of Man','Israel','Italy','Ivory Coast','Jamaica','Japan','Jordan','Kazakhstan','Kenya','Kiribati','Kosovo','Kuwait','Kyrgyzstan','Laos','Latvia','Lebanon','Lesotho','Liberia','Libya','Liechtenstein','Lithuania','Luxembourg','Macau S.A.R','Macedonia','Madagascar','Malawi','Malaysia','Maldives','Mali','Malta','Marshall Islands','Mauritania','Mauritius','Mexico','Moldova','Monaco','Mongolia','Montenegro','Morocco','Mozambique','Myanmar','Namibia','Nepal','Netherlands','New Caledonia','New Zealand','Nicaragua','Niger','Nigeria','North Korea','Northern Mariana Islands','Norway','Oman','Pakistan','Palau','Palestine','Panama','Papua New Guinea','Paraguay','Peru','Philippines','Poland','Portugal','Puerto Rico','Qatar','Romania','Russia','Rwanda','Saint Kitts and Nevis','Saint Lucia','Saint Vincent and the Grenadines','Samoa','San Marino','Sao Tome and Principe','Saudi Arabia','Senegal','Serbia','Seychelles','Sierra Leone','Singapore','Slovakia','Slovenia','Solomon Islands','Somalia','Somaliland','South Africa','South Georgia and the Islands','South Korea','South Sudan','Spain','Sri Lanka','Sudan','Suriname','Svalbard and Jan Mayen Islands','Swaziland','Sweden','Switzerland','Syria','Taiwan','Tajikistan','Tanzania','Thailand','The Bahamas','The Gambia','Togo','Tonga','Trinidad and Tobago','Tunisia','Turkey','Turkmenistan','Turks and Caicos Islands','Tuvalu','Uganda','Ukraine','United Arab Emirates','United Kingdom','United States Virgin Islands','USA','Uruguay','Uzbekistan','Vanuatu','Vatican (Holy Sea)','Venezuela','Vietnam','Western Sahara','Yemen','Zambia','Zimbabwe']

        self.dlg.comboBox.addItems(self.db_list)
        self.dlg.comboBox.setCurrentIndex(int(self.current))
        self.dlg.show()

    def close(self):
        self.dlg.close()

    def toolButtonImport(self):
        self.csvFile  = QFileDialog.getOpenFileName(None, "Choose the file",
                                                            os.path.join(os.path.join(os.path.expanduser('~')),
                                                            'Desktop'),"(*.csv)")
        if self.csvFile == "":
            self.csvFile = self.plugin_dir + '/World Capitals.csv'
            self.dlg.imp.setText(self.csvFile)
            return
        self.csvFile = self.csvFile
        self.dlg.imp.setText(self.csvFile)

    def selectOutp(self):
        msgBox = QMessageBox()
        msgBox.setIcon(QMessageBox.Warning)
        msgBox.setWindowTitle('Warning')
        msgBox.setText('Please define a csv file with locations.')
        msgBox.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)
        msgBox.exec_()
        return True

    def ok(self):
        if self.reload == False:
            if self.dlg.imp.text() == '':
                if self.selectOutp():
                    return
            elif os.path.isabs(self.dlg.imp.text())==False:
                if self.selectOutp():
                    return
        else:
            self.reload = False

        self.csvFile = self.dlg.imp.text()
        status = False
        if not self.dlg.checkBox.isChecked():
            self.current = self.dlg.comboBox.currentIndex()
            status = self.db_list[self.current].upper() == 'WORLD CAPITALS'
            if status:
                self.csvFile = self.plugin_dir + '/World Capitals.csv'

        if not self.dlg.checkBox.isChecked() and not status:
            self.csvFile = self.plugin_dir + '\\Countries.csv'
            f_all = open(self.csvFile, 'r')
            self.all_cities=[]
            for line in f_all:
                mm = line.rstrip(',').upper()
                if self.db_list[self.current].upper() in mm:
                    self.all_cities.append(mm[:-1])
        else:
            try:
                f = open(self.csvFile, 'r')
                self.all_cities = [line.rstrip('\n').upper() for line in f]
                f.close()
            except:
                msgBox = QMessageBox()
                msgBox.setIcon(QMessageBox.Warning)
                msgBox.setWindowTitle('Warning')
                msgBox.setText('Please define a csv file path.')
                msgBox.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)
                msgBox.exec_()
                return

        self.outQWeatherGeoJson = self.plugin_dir + '\\QWeather.geojson'
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

        if self.iface.actionSelectRectangle().isChecked() == False:
            self.iface.actionSelectRectangle().trigger()
        if self.iface.actionMapTips().isChecked() == False:
            self.iface.actionMapTips().trigger()

        if len(self.all_cities)> 1000:
            msgBox = QMessageBox()
            msgBox.setIcon(QMessageBox.Warning)
            msgBox.setWindowTitle('Warning')
            msgBox.setText('Maximum locations must be below from 750.')
            msgBox.setWindowFlags(Qt.CustomizeWindowHint | Qt.WindowStaysOnTopHint | Qt.WindowCloseButtonHint)
            msgBox.exec_()
            self.dlg.progressBar.setValue(100)
            self.dlg.progressBar.setValue(0)
            ###########################################

            self.dlg.ok.setEnabled(True)
            self.dlg.closebutton.setEnabled(True)
            self.dlg.toolButtonImport.setEnabled(True)
            return

        # do stuff
        if self.dlg.Celsius.isChecked():
            self.unit = 'C'
            self.unitDirection = " degrees"
            self.unitSpeed =  " km/h"
            self.unitHumidity = " %"
            self.unitVisibility = " km"
            self.unitPressure = " hPa"
            self.style = 'weather_c'

        else:
            self.unit = 'F'
            self.unitDirection = " degrees"
            self.unitSpeed =  " mph"
            self.unitHumidity = " %"
            self.unitVisibility = " mi"
            self.unitPressure = " psi"
            self.style = 'weather_f'

        if len(self.all_cities) > 350:
            self.tmp_cities = self.all_cities
            self.all_cities = self.tmp_cities[:350]
            data = self.callQuery()
            self.close_file = False
            self.createJsonFiles(data, False)
            self.all_cities = self.tmp_cities[351:700]
            data = self.callQuery()
            if len(self.all_cities) > 701:
                self.all_cities = self.tmp_cities[701:]
                self.close_file = False
                data = self.callQuery()
                self.close_file = True
                self.createJsonFiles(data, True)
            else:
                self.close_file = True
                self.createJsonFiles(data, True)
        else:
            self.close_file = True
            data = self.callQuery()
            self.createJsonFiles(data, False)

        self.dlg.progressBar.setValue(100)
        ###########################################

        self.dlg.ok.setEnabled(True)
        self.dlg.closebutton.setEnabled(True)
        if not self.dlg.checkBox.isChecked():
            self.dlg.toolButtonImport.setEnabled(False)
        else:
            self.dlg.toolButtonImport.setEnabled(True)

        self.reloadButton.setEnabled(True)

    def createJsonFiles(self, data, f_QWeather):

        if f_QWeather == False:
            self.dlg.progressBar.setValue(10)
            self.f_fileWeather = open(self.outQWeatherGeoJson, "w")
            self.f_fileWeather.write('''{ "type": "FeatureCollection", ''')
            self.f_fileWeather.write(
                '''"crs": { "type": "name", "properties": { "name": "urn:ogc:def:crs:OGC:1.3:CRS84" } }, ''')
            self.f_fileWeather.write('\n')
            self.f_fileWeather.write('"features": [')

        for i in range(int(data['query']['count'])):
            self.dlg.progressBar.setValue(40)
            try:
                try:
                    City = data['query']['results']['channel'][i]['location']['city']
                    Country = data['query']['results']['channel'][i]['location']['country']
                    Region = data['query']['results']['channel'][i]['location']['region']
                    Direction = data['query']['results']['channel'][i]['wind']['direction']
                    Speed = data['query']['results']['channel'][i]['wind']['speed']
                    Humidity = data['query']['results']['channel'][i]['atmosphere']['humidity']
                    Pressure = data['query']['results']['channel'][i]['atmosphere']['pressure']
                    Visibility = data['query']['results']['channel'][i]['atmosphere']['visibility']
                    Sunrise = data['query']['results']['channel'][i]['astronomy']['sunrise']
                    Sunset = data['query']['results']['channel'][i]['astronomy']['sunset']
                    Lon = data['query']['results']['channel'][i]['item']['long']
                    Lat = data['query']['results']['channel'][i]['item']['lat']
                    Temp = data['query']['results']['channel'][i]['item']['condition']['temp']
                    Date = data['query']['results']['channel'][i]['item']['condition']['date']
                    IconTmp = data['query']['results']['channel'][i]['item']['description']
                    match = re.findall(r'http?://[^\s<>"]+|www\.[^\s<>"]+', IconTmp)
                    Icon = match[0]
                except:
                    City = data['query']['results']['channel']['location']['city']
                    Country = data['query']['results']['channel']['location']['country']
                    Region = data['query']['results']['channel']['location']['region']
                    Direction = data['query']['results']['channel']['wind']['direction']
                    Speed = data['query']['results']['channel']['wind']['speed']
                    Humidity = data['query']['results']['channel']['atmosphere']['humidity']
                    Pressure = data['query']['results']['channel']['atmosphere']['pressure']
                    Visibility = data['query']['results']['channel']['atmosphere']['visibility']
                    Sunrise = data['query']['results']['channel']['astronomy']['sunrise']
                    Sunset = data['query']['results']['channel']['astronomy']['sunset']
                    Lon = data['query']['results']['channel']['item']['long']
                    Lat = data['query']['results']['channel']['item']['lat']
                    Temp = data['query']['results']['channel']['item']['condition']['temp']
                    Date = data['query']['results']['channel']['item']['condition']['date']
                    IconTmp = data['query']['results']['channel']['item']['description']
                    match = re.findall(r'http?://[^\s<>"]+|www\.[^\s<>"]+', IconTmp)
                    Icon = match[0]

                self.f_fileWeather.write(
                '{ "type": "Feature", "properties": {  "City": ' + '"' + City + '"' + ', "Temp": '+ '"' + Temp + '"'
                + ', "Direction": ' + '"' + Direction+self.unitDirection + '"'  + ', "Speed": ' + '"' + Speed+self.unitSpeed + '"'
                + ', "Humidity": ' + '"' + Humidity+self.unitHumidity + '"'  + ', "Pressure": ' + '"' + Pressure+self.unitPressure + '"' + ', "Visibility": ' + '"' + Visibility+self.unitVisibility + '"'
                + ', "Sunrise": ' + '"' + Sunrise + '"'  + ', "Sunset": ' + '"' + Sunset + '"'
                + ', "Unit": ' + '"' + self.unit + '"'  + ', "Icon": ' + '"' + Icon + '"'
                + ', "Country": ' + '"' + Country.replace('ô','o').replace('´','') + '"'  + ', "Region": ' + '"' + Region.replace('´','') + '"'
                + ', "Lon": ' + '"' + Lon + '"' + ', "Date": ' + '"' + Date + '"' + ', "Lat": ' + '"' + Lat + '"' +
                ',}, "geometry": { "type": "Point",  "coordinates": ' + '[' + Lon + ',' + Lat + ']')
                self.f_fileWeather.write('}\n }')
                self.f_fileWeather.write(',\n')

            except:
                pass

        if self.close_file:
            self.f_fileWeather.write('\n]\n}\n')
            self.f_fileWeather.close()

            # print region_not_support
            def addQWeatherLayer():
                self.QWeather = self.iface.addVectorLayer(self.outQWeatherGeoJson,
                                                              self.layerTemp, "ogr")
                self.QWeather.loadNamedStyle(self.plugin_dir + "/icons/"+self.style+".qml")

                self.QWeather.setReadOnly()

            if len(QgsMapLayerRegistry.instance().mapLayersByName(self.layerTemp)) == 0:
                addQWeatherLayer()
            else:
                for x in self.iface.mapCanvas().layers():
                    if x.name() == self.layerTemp:
                        self.QWeather = x
                        QgsMapLayerRegistry.instance().removeMapLayer(self.QWeather.id())
                        addQWeatherLayer()
            try:
                self.iface.mapCanvas().setExtent(self.QWeather.extent())
                self.QWeather.reload()
                self.QWeather.triggerRepaint()
            except:
                pass

    def callQuery(self):
        if len(self.all_cities) > 1:
            yql_query = 'select *  from weather.forecast  where woeid in (     select woeid      from geo.places(1)      where text in (' + str(self.all_cities)[1:-1] + '))'+' and u="'+ self.unit + '"'
        else:
            yql_query = 'select *  from weather.forecast  where woeid in (     select woeid      from geo.places(1)      where text = "' + str(self.all_cities[0]) + '")' + ' and u="' + self.unit + '"'

        yql_url = "https://query.yahooapis.com/v1/public/yql?" + urllib.urlencode({'q': yql_query}) + "&format=json"
        result = urllib.urlopen(yql_url).read()
        data = json.loads(result)
        return data