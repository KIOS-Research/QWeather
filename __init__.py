# -*- coding: utf-8 -*-
"""
/***************************************************************************
 Weather
                                 A QGIS plugin
 Weather Info
                              -------------------
        begin                : 2018-06-07
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
    
# noinspection PyPep8Naming
def classFactory(iface):  # pylint: disable=invalid-name
    """Load WeatherInfo class from file WeatherInfo.

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    #
    from .Weather import Weather
    return Weather(iface)
