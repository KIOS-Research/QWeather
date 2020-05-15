<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyDrawingHints="0" minScale="100000000" simplifyMaxScale="1" simplifyDrawingTol="1" styleCategories="AllStyleCategories" version="3.12.0-București" labelsEnabled="1" hasScaleBasedVisibilityFlag="0" maxScale="0" readOnly="1" simplifyLocal="1" simplifyAlgorithm="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" forceraster="0" enableorderby="0">
    <symbols>
      <symbol type="marker" force_rhr="0" clip_to_extent="1" name="0" alpha="0.995">
        <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
          <prop v="0" k="angle"/>
          <prop v="75,149,195,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="arrow" k="name"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0,0,0,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0" k="outline_width"/>
          <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="diameter" k="scale_method"/>
          <prop v="4" k="size"/>
          <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
          <prop v="MM" k="size_unit"/>
          <prop v="1" k="vertical_anchor_point"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="angle">
                  <Option type="bool" value="true" name="active"/>
                  <Option type="QString" value="&quot;direction&quot;" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style previewBkgrdColor="255,255,255,255" namedStyle="Κανονικά" fieldName="CASE WHEN temperature_unit = 'C'  THEN  city +  to_string('\n') + to_string(&quot;speed&quot;) + speed_unit&#xd;&#xa;  WHEN temperature_unit = 'F' THEN city +  to_string('\n') + to_string(&quot;speed&quot;) + speed_unit&#xd;&#xa;END" fontCapitals="0" useSubstitutions="0" fontFamily="MS Shell Dlg 2" fontStrikeout="0" textOrientation="horizontal" fontWeight="50" fontWordSpacing="0" multilineHeight="1" isExpression="1" fontSize="12.25" blendMode="0" fontUnderline="0" fontItalic="0" fontKerning="1" fontSizeUnit="Point" textColor="0,47,130,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" textOpacity="1" fontLetterSpacing="0">
        <text-buffer bufferJoinStyle="128" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferOpacity="1" bufferNoFill="0" bufferSize="0.3" bufferBlendMode="0" bufferSizeUnits="MM" bufferDraw="1"/>
        <text-mask maskSize="0" maskType="0" maskedSymbolLayers="" maskOpacity="1" maskSizeUnits="MM" maskEnabled="0" maskJoinStyle="128" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
        <background shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBlendMode="0" shapeRotation="0" shapeOffsetX="0" shapeSizeY="0" shapeFillColor="255,255,255,255" shapeBorderColor="128,128,128,255" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSVGFile="" shapeRadiiUnit="MM" shapeSizeX="0" shapeRotationType="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeDraw="0" shapeRadiiY="0" shapeBorderWidthUnit="MM" shapeRadiiX="0" shapeOffsetY="0" shapeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeJoinStyle="64" shapeSizeType="0" shapeBorderWidth="0" shapeSizeUnit="MM" shapeOffsetUnit="MM" shapeOpacity="1">
          <symbol type="marker" force_rhr="0" clip_to_extent="1" name="markerSymbol" alpha="1">
            <layer class="SimpleMarker" enabled="1" pass="0" locked="0">
              <prop v="0" k="angle"/>
              <prop v="152,125,183,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="circle" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="0" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MM" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="2" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MM" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" value="" name="name"/>
                  <Option name="properties"/>
                  <Option type="QString" value="collection" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </background>
        <shadow shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusAlphaOnly="0" shadowScale="100" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowDraw="0" shadowOffsetUnit="MM" shadowOpacity="0.7" shadowUnder="0" shadowOffsetDist="0.01" shadowRadiusUnit="MM" shadowBlendMode="6" shadowOffsetGlobal="1" shadowRadius="0.5" shadowColor="0,0,0,255" shadowOffsetAngle="135"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format addDirectionSymbol="0" rightDirectionSymbol=">" reverseDirectionSymbol="0" multilineAlign="1" plussign="0" formatNumbers="0" autoWrapLength="0" leftDirectionSymbol="&lt;" decimals="3" wrapChar="" useMaxLineLengthForAutoWrap="1" placeDirectionSymbol="0"/>
      <placement centroidInside="0" repeatDistanceUnits="MM" overrunDistance="0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" fitInPolygonOnly="0" geometryGeneratorEnabled="0" priority="0" offsetType="1" offsetUnits="MapUnit" centroidWhole="0" distMapUnitScale="3x:0,0,0,0,0,0" placement="6" placementFlags="10" repeatDistance="0" dist="0" yOffset="0.001" xOffset="0.001" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" preserveRotation="1" geometryGenerator="" quadOffset="8" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" rotationAngle="0" overrunDistanceUnit="MM" maxCurvedCharAngleOut="-25" geometryGeneratorType="PointGeometry" layerType="PointGeometry" distUnits="MM" maxCurvedCharAngleIn="25" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0"/>
      <rendering maxNumLabels="2000" fontMaxPixelSize="10000" drawLabels="1" scaleMax="10000000" obstacle="0" fontMinPixelSize="3" zIndex="0" displayAll="0" obstacleFactor="0.98" fontLimitPixelSize="0" upsidedownLabels="1" scaleVisibility="0" mergeLines="0" scaleMin="1" limitNumLabels="0" labelPerPart="0" obstacleType="0" minFeatureSize="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" value="" name="name"/>
          <Option name="properties"/>
          <Option type="QString" value="collection" name="type"/>
        </Option>
      </dd_properties>
      <callout type="simple">
        <Option type="Map">
          <Option type="QString" value="pole_of_inaccessibility" name="anchorPoint"/>
          <Option type="Map" name="ddProperties">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
          <Option type="bool" value="false" name="drawToAllParts"/>
          <Option type="QString" value="0" name="enabled"/>
          <Option type="QString" value="&lt;symbol type=&quot;line&quot; force_rhr=&quot;0&quot; clip_to_extent=&quot;1&quot; name=&quot;symbol&quot; alpha=&quot;1&quot;>&lt;layer class=&quot;SimpleLine&quot; enabled=&quot;1&quot; pass=&quot;0&quot; locked=&quot;0&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
          <Option type="double" value="0" name="minLength"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="minLengthMapUnitScale"/>
          <Option type="QString" value="MM" name="minLengthUnit"/>
          <Option type="double" value="0" name="offsetFromAnchor"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromAnchorMapUnitScale"/>
          <Option type="QString" value="MM" name="offsetFromAnchorUnit"/>
          <Option type="double" value="0" name="offsetFromLabel"/>
          <Option type="QString" value="3x:0,0,0,0,0,0" name="offsetFromLabelMapUnitScale"/>
          <Option type="QString" value="MM" name="offsetFromLabelUnit"/>
        </Option>
      </callout>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>city</value>
      <value>City</value>
      <value>city</value>
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory enabled="0" rotationOffset="270" opacity="1" backgroundColor="#ffffff" lineSizeScale="3x:0,0,0,0,0,0" width="15" labelPlacementMethod="XHeight" direction="0" spacingUnitScale="3x:0,0,0,0,0,0" backgroundAlpha="255" penAlpha="255" diagramOrientation="Up" sizeScale="3x:0,0,0,0,0,0" scaleBasedVisibility="0" height="15" minimumSize="0" penColor="#000000" showAxis="1" spacing="5" lineSizeType="MM" spacingUnit="MM" maxScaleDenominator="1e+08" penWidth="0" sizeType="MM" scaleDependency="Area" barWidth="5" minScaleDenominator="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute field="" label="" color="#000000"/>
      <axisSymbol>
        <symbol type="line" force_rhr="0" clip_to_extent="1" name="" alpha="1">
          <layer class="SimpleLine" enabled="1" pass="0" locked="0">
            <prop v="square" k="capstyle"/>
            <prop v="5;2" k="customdash"/>
            <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
            <prop v="MM" k="customdash_unit"/>
            <prop v="0" k="draw_inside_polygon"/>
            <prop v="bevel" k="joinstyle"/>
            <prop v="35,35,35,255" k="line_color"/>
            <prop v="solid" k="line_style"/>
            <prop v="0.26" k="line_width"/>
            <prop v="MM" k="line_width_unit"/>
            <prop v="0" k="offset"/>
            <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
            <prop v="MM" k="offset_unit"/>
            <prop v="0" k="ring_filter"/>
            <prop v="0" k="use_custom_dash"/>
            <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" value="" name="name"/>
                <Option name="properties"/>
                <Option type="QString" value="collection" name="type"/>
              </Option>
            </data_defined_properties>
          </layer>
        </symbol>
      </axisSymbol>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" showAll="1" placement="0" obstacle="0" dist="0" linePlacementFlags="18" priority="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <referencedLayers/>
  <referencingLayers/>
  <fieldConfiguration>
    <field name="country">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="city">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="region">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="temperature">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="temperature_unit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="date">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="direction">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="direction_unit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="speed">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="speed_unit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="humidity">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="humidity_unit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pressure">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="pressure_unit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="visibility">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="visibility_unit">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sunrise">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="sunset">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="icon">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="lat">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="lon">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="country" index="0" name=""/>
    <alias field="city" index="1" name=""/>
    <alias field="region" index="2" name=""/>
    <alias field="temperature" index="3" name=""/>
    <alias field="temperature_unit" index="4" name=""/>
    <alias field="date" index="5" name=""/>
    <alias field="direction" index="6" name=""/>
    <alias field="direction_unit" index="7" name=""/>
    <alias field="speed" index="8" name=""/>
    <alias field="speed_unit" index="9" name=""/>
    <alias field="humidity" index="10" name=""/>
    <alias field="humidity_unit" index="11" name=""/>
    <alias field="pressure" index="12" name=""/>
    <alias field="pressure_unit" index="13" name=""/>
    <alias field="visibility" index="14" name=""/>
    <alias field="visibility_unit" index="15" name=""/>
    <alias field="sunrise" index="16" name=""/>
    <alias field="sunset" index="17" name=""/>
    <alias field="icon" index="18" name=""/>
    <alias field="lat" index="19" name=""/>
    <alias field="lon" index="20" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="country" applyOnUpdate="0" expression=""/>
    <default field="city" applyOnUpdate="0" expression=""/>
    <default field="region" applyOnUpdate="0" expression=""/>
    <default field="temperature" applyOnUpdate="0" expression=""/>
    <default field="temperature_unit" applyOnUpdate="0" expression=""/>
    <default field="date" applyOnUpdate="0" expression=""/>
    <default field="direction" applyOnUpdate="0" expression=""/>
    <default field="direction_unit" applyOnUpdate="0" expression=""/>
    <default field="speed" applyOnUpdate="0" expression=""/>
    <default field="speed_unit" applyOnUpdate="0" expression=""/>
    <default field="humidity" applyOnUpdate="0" expression=""/>
    <default field="humidity_unit" applyOnUpdate="0" expression=""/>
    <default field="pressure" applyOnUpdate="0" expression=""/>
    <default field="pressure_unit" applyOnUpdate="0" expression=""/>
    <default field="visibility" applyOnUpdate="0" expression=""/>
    <default field="visibility_unit" applyOnUpdate="0" expression=""/>
    <default field="sunrise" applyOnUpdate="0" expression=""/>
    <default field="sunset" applyOnUpdate="0" expression=""/>
    <default field="icon" applyOnUpdate="0" expression=""/>
    <default field="lat" applyOnUpdate="0" expression=""/>
    <default field="lon" applyOnUpdate="0" expression=""/>
  </defaults>
  <constraints>
    <constraint field="country" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="city" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="region" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="temperature" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="temperature_unit" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="date" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="direction" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="direction_unit" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="speed" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="speed_unit" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="humidity" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="humidity_unit" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pressure" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="pressure_unit" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="visibility" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="visibility_unit" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="sunrise" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="sunset" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="icon" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="lat" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
    <constraint field="lon" exp_strength="0" unique_strength="0" notnull_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="country" exp="" desc=""/>
    <constraint field="city" exp="" desc=""/>
    <constraint field="region" exp="" desc=""/>
    <constraint field="temperature" exp="" desc=""/>
    <constraint field="temperature_unit" exp="" desc=""/>
    <constraint field="date" exp="" desc=""/>
    <constraint field="direction" exp="" desc=""/>
    <constraint field="direction_unit" exp="" desc=""/>
    <constraint field="speed" exp="" desc=""/>
    <constraint field="speed_unit" exp="" desc=""/>
    <constraint field="humidity" exp="" desc=""/>
    <constraint field="humidity_unit" exp="" desc=""/>
    <constraint field="pressure" exp="" desc=""/>
    <constraint field="pressure_unit" exp="" desc=""/>
    <constraint field="visibility" exp="" desc=""/>
    <constraint field="visibility_unit" exp="" desc=""/>
    <constraint field="sunrise" exp="" desc=""/>
    <constraint field="sunset" exp="" desc=""/>
    <constraint field="icon" exp="" desc=""/>
    <constraint field="lat" exp="" desc=""/>
    <constraint field="lon" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortOrder="0" sortExpression="&quot;City&quot;">
    <columns>
      <column hidden="1" type="actions" width="-1"/>
      <column hidden="0" type="field" width="-1" name="country"/>
      <column hidden="0" type="field" width="-1" name="city"/>
      <column hidden="0" type="field" width="-1" name="region"/>
      <column hidden="0" type="field" width="-1" name="temperature"/>
      <column hidden="0" type="field" width="-1" name="temperature_unit"/>
      <column hidden="0" type="field" width="-1" name="date"/>
      <column hidden="0" type="field" width="-1" name="direction"/>
      <column hidden="0" type="field" width="-1" name="direction_unit"/>
      <column hidden="0" type="field" width="-1" name="speed"/>
      <column hidden="0" type="field" width="-1" name="speed_unit"/>
      <column hidden="0" type="field" width="-1" name="humidity"/>
      <column hidden="0" type="field" width="-1" name="humidity_unit"/>
      <column hidden="0" type="field" width="-1" name="pressure"/>
      <column hidden="0" type="field" width="-1" name="pressure_unit"/>
      <column hidden="0" type="field" width="-1" name="visibility"/>
      <column hidden="0" type="field" width="-1" name="visibility_unit"/>
      <column hidden="0" type="field" width="-1" name="sunrise"/>
      <column hidden="0" type="field" width="-1" name="sunset"/>
      <column hidden="0" type="field" width="-1" name="icon"/>
      <column hidden="0" type="field" width="-1" name="lat"/>
      <column hidden="0" type="field" width="-1" name="lon"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1">.</editform>
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
    <field name="Celsius" editable="1"/>
    <field name="City" editable="1"/>
    <field name="Country" editable="1"/>
    <field name="Date" editable="1"/>
    <field name="Direction" editable="1"/>
    <field name="Humidity" editable="1"/>
    <field name="Icon" editable="1"/>
    <field name="Lat" editable="1"/>
    <field name="Locations" editable="1"/>
    <field name="Lon" editable="1"/>
    <field name="Pressure" editable="1"/>
    <field name="Region" editable="1"/>
    <field name="Speed" editable="1"/>
    <field name="Sunrise" editable="1"/>
    <field name="Sunset" editable="1"/>
    <field name="Temp" editable="1"/>
    <field name="Unit" editable="1"/>
    <field name="Visibility" editable="1"/>
    <field name="city" editable="1"/>
    <field name="country" editable="1"/>
    <field name="date" editable="1"/>
    <field name="direction" editable="1"/>
    <field name="direction_unit" editable="1"/>
    <field name="humidity" editable="1"/>
    <field name="humidity_unit" editable="1"/>
    <field name="icon" editable="1"/>
    <field name="lat" editable="1"/>
    <field name="lon" editable="1"/>
    <field name="pressure" editable="1"/>
    <field name="pressure_unit" editable="1"/>
    <field name="region" editable="1"/>
    <field name="speed" editable="1"/>
    <field name="speed_unit" editable="1"/>
    <field name="sunrise" editable="1"/>
    <field name="sunset" editable="1"/>
    <field name="temperature" editable="1"/>
    <field name="temperature_unit" editable="1"/>
    <field name="visibility" editable="1"/>
    <field name="visibility_unit" editable="1"/>
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
    <field name="city" labelOnTop="0"/>
    <field name="country" labelOnTop="0"/>
    <field name="date" labelOnTop="0"/>
    <field name="direction" labelOnTop="0"/>
    <field name="direction_unit" labelOnTop="0"/>
    <field name="humidity" labelOnTop="0"/>
    <field name="humidity_unit" labelOnTop="0"/>
    <field name="icon" labelOnTop="0"/>
    <field name="lat" labelOnTop="0"/>
    <field name="lon" labelOnTop="0"/>
    <field name="pressure" labelOnTop="0"/>
    <field name="pressure_unit" labelOnTop="0"/>
    <field name="region" labelOnTop="0"/>
    <field name="speed" labelOnTop="0"/>
    <field name="speed_unit" labelOnTop="0"/>
    <field name="sunrise" labelOnTop="0"/>
    <field name="sunset" labelOnTop="0"/>
    <field name="temperature" labelOnTop="0"/>
    <field name="temperature_unit" labelOnTop="0"/>
    <field name="visibility" labelOnTop="0"/>
    <field name="visibility_unit" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>city</previewExpression>
  <mapTip>&lt;style>&#xd;
body {background-color: #dddddd!important; font-family: sans-serif;}&#xd;
table {border-collapse: collapse;}&#xd;
td {white-space: nowrap; padding: 5px;}&#xd;
td.bold {font-weight: bold;}&#xd;
td.gap {background-color:white;padding:1px;}&#xd;
&lt;/style>&#xd;
&lt;table style="width:100%">&#xd;
&lt;tr>&lt;td class="bold">City:&lt;/td>&lt;td> [% "city" %], [% "country" %] &lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Temperature:&lt;/td>&lt;td> [% "temperature" %]°[% "temperature_unit" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Wind Direction:&lt;/td>&lt;td> [% "direction" %] [% "direction_unit" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Wind Speed:&lt;/td>&lt;td> [% "speed" %] [% "speed_unit" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Humidity:&lt;/td>&lt;td> [% "humidity" %] [% "humidity_unit" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Pressure:&lt;/td>&lt;td> [% "pressure" %] [% "pressure_unit" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Visibility:&lt;/td>&lt;td> [% "visibility" %] [% "visibility_unit" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Sunrise:&lt;/td>&lt;td> [% "sunrise" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Sunset:&lt;/td>&lt;td> [% "sunset" %]&lt;/td>&lt;/tr>&#xd;
&lt;tr>&lt;td class="bold">Date:&lt;/td>&lt;td> [% "date" %]&lt;/td>&lt;/tr>&#xd;
&lt;img src="[% "Icon" %]" />&#xd;
&lt;/table>&#xd;
</mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
