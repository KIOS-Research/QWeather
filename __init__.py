# -*- coding: utf-8 -*-
"""
/***************************************************************************
 WeatherInfo
                                 A QGIS plugin
 Weather Info
                              -------------------
        begin                : 2017-10-17
        git sha              : $Format:%H$
        copyright            : (C) 2017 by KIOS Research Center
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
    from .WeatherInfo import WeatherInfo
    return WeatherInfo(iface)
