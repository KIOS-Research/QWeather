<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingTol="1" labelsEnabled="1" hasScaleBasedVisibilityFlag="0" version="3.0.0-Girona" minScale="1e+8" simplifyMaxScale="1" maxScale="0" simplifyAlgorithm="0" readOnly="1" simplifyLocal="1" simplifyDrawingHints="0">
  <renderer-v2 symbollevels="0" forceraster="0" type="singleSymbol" enableorderby="0">
    <symbols>
      <symbol clip_to_extent="1" type="marker" name="0" alpha="0.995">
        <layer locked="0" class="SimpleMarker" pass="0" enabled="1">
          <prop k="angle" v="0"/>
          <prop k="color" v="255,255,255,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="4"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style textColor="0,47,130,255" fontWordSpacing="0" isExpression="1" previewBkgrdColor="#ffffff" namedStyle="Κανονικά" fieldName="CASE WHEN Unit = 'C'  THEN  City +  to_string('\n') + to_string(&quot;Temp&quot;) + '°C'&#xd;&#xa;  WHEN Unit = 'F' THEN City +  to_string('\n') + to_string(&quot;Temp&quot;) + '°F'&#xd;&#xa;END" fontUnderline="0" textOpacity="1" fontCapitals="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontSize="12.25" useSubstitutions="0" fontStrikeout="0" fontSizeUnit="Point" fontWeight="50" fontFamily="MS Shell Dlg 2" multilineHeight="1" fontLetterSpacing="0" blendMode="0" fontItalic="0">
        <text-buffer bufferBlendMode="0" bufferSizeUnits="MM" bufferOpacity="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferDraw="1" bufferSize="0.3" bufferNoFill="0" bufferJoinStyle="128" bufferColor="255,255,255,255"/>
        <background shapeRotation="0" shapeSizeX="0" shapeFillColor="255,255,255,255" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeSizeType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderColor="128,128,128,255" shapeBlendMode="0" shapeRadiiUnit="MM" shapeRadiiY="0" shapeSizeY="0" shapeRadiiX="0" shapeOffsetY="0" shapeOpacity="1" shapeBorderWidth="0" shapeOffsetUnit="MM" shapeSizeUnit="MM" shapeType="0"/>
        <shadow shadowOffsetGlobal="1" shadowUnder="0" shadowOffsetUnit="MM" shadowRadius="0.5" shadowOffsetDist="0.01" shadowScale="100" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowRadiusUnit="MM" shadowBlendMode="6" shadowDraw="0" shadowOffsetAngle="135" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowColor="0,0,0,255"/>
        <substitutions/>
      </text-style>
      <text-format multilineAlign="1" placeDirectionSymbol="0" formatNumbers="0" plussign="0" wrapChar="" reverseDirectionSymbol="0" addDirectionSymbol="0" leftDirectionSymbol="&lt;" decimals="3" rightDirectionSymbol=">"/>
      <placement repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" distMapUnitScale="3x:0,0,0,0,0,0" xOffset="0.001" centroidInside="0" centroidWhole="0" repeatDistanceUnits="MM" preserveRotation="1" placement="6" offsetType="0" fitInPolygonOnly="0" distUnits="MM" maxCurvedCharAngleIn="25" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" quadOffset="6" priority="0" placementFlags="10" offsetUnits="MapUnit" yOffset="0.001" dist="0" maxCurvedCharAngleOut="-25" rotationAngle="0" repeatDistance="0"/>
      <rendering mergeLines="0" fontMinPixelSize="3" displayAll="0" upsidedownLabels="1" minFeatureSize="0" fontMaxPixelSize="10000" fontLimitPixelSize="0" limitNumLabels="0" scaleMax="10000000" zIndex="0" obstacleFactor="0.98" maxNumLabels="2000" labelPerPart="0" scaleVisibility="0" scaleMin="1" obstacleType="0" obstacle="0" drawLabels="1"/>
      <dd_properties>
        <Option type="Map">
          <Option value="" type="QString" name="name"/>
          <Option name="properties"/>
          <Option value="collection" type="QString" name="type"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>City</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer attributeLegend="1" diagramType="Histogram">
    <DiagramCategory backgroundColor="#ffffff" sizeType="MM" penAlpha="255" width="15" lineSizeType="MM" barWidth="5" penColor="#000000" scaleBasedVisibility="0" scaleDependency="Area" rotationOffset="270" labelPlacementMethod="XHeight" maxScaleDenominator="1e+8" enabled="0" minimumSize="0" height="15" backgroundAlpha="255" opacity="1" penWidth="0" minScaleDenominator="0" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute color="#000000" label="" field=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="2" placement="0" showAll="1" priority="0" zIndex="0" dist="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option value="" type="QString" name="name"/>
        <Option name="properties"/>
        <Option value="collection" type="QString" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <fieldConfiguration>
    <field name="City">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Temp">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Direction">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Speed">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Humidity">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Pressure">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Visibility">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Sunrise">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Sunset">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Unit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Icon">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Country">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Region">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Lon">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Date">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Lat">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="City" name="" index="0"/>
    <alias field="Temp" name="" index="1"/>
    <alias field="Direction" name="" index="2"/>
    <alias field="Speed" name="" index="3"/>
    <alias field="Humidity" name="" index="4"/>
    <alias field="Pressure" name="" index="5"/>
    <alias field="Visibility" name="" index="6"/>
    <alias field="Sunrise" name="" index="7"/>
    <alias field="Sunset" name="" index="8"/>
    <alias field="Unit" name="" index="9"/>
    <alias field="Icon" name="" index="10"/>
    <alias field="Country" name="" index="11"/>
    <alias field="Region" name="" index="12"/>
    <alias field="Lon" name="" index="13"/>
    <alias field="Date" name="" index="14"/>
    <alias field="Lat" name="" index="15"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" expression="" field="City"/>
    <default applyOnUpdate="0" expression="" field="Temp"/>
    <default applyOnUpdate="0" expression="" field="Direction"/>
    <default applyOnUpdate="0" expression="" field="Speed"/>
    <default applyOnUpdate="0" expression="" field="Humidity"/>
    <default applyOnUpdate="0" expression="" field="Pressure"/>
    <default applyOnUpdate="0" expression="" field="Visibility"/>
    <default applyOnUpdate="0" expression="" field="Sunrise"/>
    <default applyOnUpdate="0" expression="" field="Sunset"/>
    <default applyOnUpdate="0" expression="" field="Unit"/>
    <default applyOnUpdate="0" expression="" field="Icon"/>
    <default applyOnUpdate="0" expression="" field="Country"/>
    <default applyOnUpdate="0" expression="" field="Region"/>
    <default applyOnUpdate="0" expression="" field="Lon"/>
    <default applyOnUpdate="0" expression="" field="Date"/>
    <default applyOnUpdate="0" expression="" field="Lat"/>
  </defaults>
  <constraints>
    <constraint constraints="0" notnull_strength="0" field="City" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Temp" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Direction" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Speed" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Humidity" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Pressure" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Visibility" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Sunrise" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Sunset" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Unit" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Icon" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Country" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Region" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Lon" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Date" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" notnull_strength="0" field="Lat" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="City" exp=""/>
    <constraint desc="" field="Temp" exp=""/>
    <constraint desc="" field="Direction" exp=""/>
    <constraint desc="" field="Speed" exp=""/>
    <constraint desc="" field="Humidity" exp=""/>
    <constraint desc="" field="Pressure" exp=""/>
    <constraint desc="" field="Visibility" exp=""/>
    <constraint desc="" field="Sunrise" exp=""/>
    <constraint desc="" field="Sunset" exp=""/>
    <constraint desc="" field="Unit" exp=""/>
    <constraint desc="" field="Icon" exp=""/>
    <constraint desc="" field="Country" exp=""/>
    <constraint desc="" field="Region" exp=""/>
    <constraint desc="" field="Lon" exp=""/>
    <constraint desc="" field="Date" exp=""/>
    <constraint desc="" field="Lat" exp=""/>
  </constraintExpressions>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;City&quot;">
    <columns>
      <column hidden="0" width="-1" type="field" name="Lon"/>
      <column hidden="0" width="-1" type="field" name="Lat"/>
      <column hidden="1" width="-1" type="actions"/>
      <column hidden="0" width="-1" type="field" name="Date"/>
      <column hidden="0" width="-1" type="field" name="City"/>
      <column hidden="0" width="-1" type="field" name="Temp"/>
      <column hidden="0" width="-1" type="field" name="Unit"/>
      <column hidden="0" width="-1" type="field" name="Country"/>
      <column hidden="0" width="-1" type="field" name="Region"/>
      <column hidden="0" width="-1" type="field" name="Icon"/>
      <column hidden="0" width="-1" type="field" name="Sunrise"/>
      <column hidden="0" width="-1" type="field" name="Sunset"/>
      <column hidden="0" width="-1" type="field" name="Direction"/>
      <column hidden="0" width="-1" type="field" name="Speed"/>
      <column hidden="0" width="-1" type="field" name="Humidity"/>
      <column hidden="0" width="-1" type="field" name="Pressure"/>
      <column hidden="0" width="-1" type="field" name="Visibility"/>
    </columns>
  </attributetableconfig>
  <editform>.</editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>.</editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="Celsius"/>
    <field editable="1" name="City"/>
    <field editable="1" name="Country"/>
    <field editable="1" name="Date"/>
    <field editable="1" name="Direction"/>
    <field editable="1" name="Humidity"/>
    <field editable="1" name="Icon"/>
    <field editable="1" name="Lat"/>
    <field editable="1" name="Locations"/>
    <field editable="1" name="Lon"/>
    <field editable="1" name="Pressure"/>
    <field editable="1" name="Region"/>
    <field editable="1" name="Speed"/>
    <field editable="1" name="Sunrise"/>
    <field editable="1" name="Sunset"/>
    <field editable="1" name="Temp"/>
    <field editable="1" name="Unit"/>
    <field editable="1" name="Visibility"/>
  </editable>
  <labelOnTop>
    <field name="Celsius" labelOnTop="0"/>
    <field name="City" labelOnTop="0"/>
    <field name="Country" labelOnTop="0"/>
    <field name="Date" labelOnTop="0"/>
    <field name="Direction" labelOnTop="0"/>
    <field name="Humidity" labelOnTop="0"/>
    <field name="Icon" labelOnTop="0"/>
    <field name="Lat" labelOnTop="0"/>
    <field name="Locations" labelOnTop="0"/>
    <field name="Lon" labelOnTop="0"/>
    <field name="Pressure" labelOnTop="0"/>
    <field name="Region" labelOnTop="0"/>
    <field name="Speed" labelOnTop="0"/>
    <field name="Sunrise" labelOnTop="0"/>
    <field name="Sunset" labelOnTop="0"/>
    <field name="Temp" labelOnTop="0"/>
    <field name="Unit" labelOnTop="0"/>
    <field name="Visibility" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <expressionfields/>
  <previewExpression>City</previewExpression>
  <mapTip>&lt;style>&#xd;
body {background-color: #dddddd!important; font-family: sans-serif;}&#xd;
table {border-collapse: collapse;}&#xd;
td {white-space: nowrap; padding: 5px;}&#xd;
td.bold {font-weight: bold;}&#xd;
td.gap {background-color:white;padding:1px;}&#xd;
&lt;/style>&#xd;
&lt;table style="width:100%">&#xd;
&lt;tr>&lt;td class="bold">City:&lt;/td>&lt;td> [% "City" %], [% "Country" %] &lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Temperature:&lt;/td>&lt;td> [% "Temp" %]°[% "Unit" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Wind Direction:&lt;/td>&lt;td> [% "Direction" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Wind Speed:&lt;/td>&lt;td> [% "Speed" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Humidity:&lt;/td>&lt;td> [% "Humidity" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Pressure:&lt;/td>&lt;td> [% "Pressure" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Visibility:&lt;/td>&lt;td> [% "Visibility" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Sunrise:&lt;/td>&lt;td> [% "Sunrise" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Sunset:&lt;/td>&lt;td> [% "Sunset" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Date:&lt;/td>&lt;td> [% "Date" %]&lt;/td>&lt;/tr>&#xd;
&lt;img src="[% "Icon" %]" />&#xd;
&lt;/table>&#xd;
</mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
