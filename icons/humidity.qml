<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyMaxScale="1" simplifyDrawingTol="1" styleCategories="AllStyleCategories" hasScaleBasedVisibilityFlag="0" minScale="100000000" maxScale="0" simplifyAlgorithm="0" labelsEnabled="1" simplifyLocal="1" readOnly="1" version="3.13.0-Master" simplifyDrawingHints="0">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" type="RuleRenderer" symbollevels="0" forceraster="0">
    <rules key="{1ec63c13-2fe2-4453-9f82-b9526d38d0ba}">
      <rule filter="(to_string(&quot;humidity&quot;)) >= 24.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 35.000000" label="24 - 35 %" key="{412017c1-1046-4002-b52f-76444a6c86a6}" symbol="0"/>
      <rule filter="(to_string(&quot;humidity&quot;)) > 35.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 45.000000" label="35 - 45 %" key="{3ba65f9f-be43-46cb-aab0-7b032c343cc6}" symbol="1"/>
      <rule filter="(to_string(&quot;humidity&quot;)) > 45.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 55.000000" label="45 - 55 %" key="{adac0696-9133-49a5-8287-fe4198d98347}" symbol="2"/>
      <rule filter="(to_string(&quot;humidity&quot;)) > 55.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 65.000000" label="55 - 65 %" key="{8d0b3097-8154-4f3f-a1ff-6ab1976bd937}" symbol="3"/>
      <rule filter="(to_string(&quot;humidity&quot;)) > 65.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 75.000000" label="65 - 75 %" key="{7291a84c-58ef-470c-aed6-6c22a678d51d}" symbol="4"/>
      <rule filter="(to_string(&quot;humidity&quot;)) > 75.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 80.000000" label="75 - 80 %" key="{9410e550-00cf-4435-9059-14d57b436f35}" symbol="5"/>
      <rule filter="(to_string(&quot;humidity&quot;)) > 80.000000" label="> 80 %" key="{76cc9462-c2f6-40fc-80f6-0969844d458b}" symbol="6"/>
    </rules>
    <symbols>
      <symbol alpha="0.995" clip_to_extent="1" type="marker" force_rhr="0" name="0">
        <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
          <prop v="0" k="angle"/>
          <prop v="49,0,126,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="to_string(&quot;direction&quot;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="0.995" clip_to_extent="1" type="marker" force_rhr="0" name="1">
        <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
          <prop v="0" k="angle"/>
          <prop v="0,125,255,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="to_string(&quot;direction&quot;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="0.995" clip_to_extent="1" type="marker" force_rhr="0" name="2">
        <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
          <prop v="0" k="angle"/>
          <prop v="42,169,42,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="to_string(&quot;direction&quot;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="0.995" clip_to_extent="1" type="marker" force_rhr="0" name="3">
        <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
          <prop v="0" k="angle"/>
          <prop v="159,255,0,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="to_string(&quot;direction&quot;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="0.995" clip_to_extent="1" type="marker" force_rhr="0" name="4">
        <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
          <prop v="0" k="angle"/>
          <prop v="255,101,0,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="to_string(&quot;direction&quot;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="0.995" clip_to_extent="1" type="marker" force_rhr="0" name="5">
        <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
          <prop v="0" k="angle"/>
          <prop v="255,34,144,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="to_string(&quot;direction&quot;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol alpha="0.995" clip_to_extent="1" type="marker" force_rhr="0" name="6">
        <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
          <prop v="0" k="angle"/>
          <prop v="255,215,235,255" k="color"/>
          <prop v="1" k="horizontal_anchor_point"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="square" k="name"/>
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
                  <Option type="bool" value="false" name="active"/>
                  <Option type="QString" value="to_string(&quot;direction&quot;)" name="expression"/>
                  <Option type="int" value="3" name="type"/>
                </Option>
              </Option>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings calloutType="simple">
      <text-style textColor="9,38,180,255" namedStyle="Κανονικά" fontLetterSpacing="0" blendMode="0" fontStrikeout="0" fontWordSpacing="0" fontWeight="50" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" fontCapitals="0" textOpacity="1" textOrientation="horizontal" fontFamily="MS Shell Dlg 2" fontSize="10" isExpression="1" fontSizeUnit="Point" multilineHeight="1" fontKerning="1" fieldName="CASE WHEN to_string(temperature_unit) = 'C'  THEN  to_string(city) +  to_string('\n') + to_string(to_string( &quot;humidity&quot;)) + ' ' + to_string(humidity_unit)&#xd;&#xa;  WHEN to_string(temperature_unit) = 'F' THEN to_string(city) +  to_string('\n') + to_string(to_string( &quot;humidity&quot;)) + ' ' + to_string(humidity_unit)&#xd;&#xa;END  " previewBkgrdColor="255,255,255,255" useSubstitutions="0" fontItalic="0">
        <text-buffer bufferSizeUnits="MM" bufferNoFill="0" bufferDraw="1" bufferSize="0.3" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferBlendMode="0" bufferOpacity="1" bufferJoinStyle="128" bufferColor="255,255,255,255"/>
        <text-mask maskedSymbolLayers="" maskSize="0" maskType="0" maskSizeUnits="MM" maskJoinStyle="128" maskEnabled="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskOpacity="1"/>
        <background shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeBorderColor="128,128,128,255" shapeSizeX="0" shapeRadiiUnit="MM" shapeFillColor="255,255,255,255" shapeSizeUnit="MM" shapeRotationType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeDraw="0" shapeOffsetY="0" shapeJoinStyle="64" shapeRotation="0" shapeSizeY="0" shapeBorderWidth="0" shapeOpacity="1" shapeSVGFile="" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeType="0" shapeType="0" shapeBlendMode="0" shapeBorderWidthUnit="MM" shapeOffsetUnit="MM">
          <symbol alpha="1" clip_to_extent="1" type="marker" force_rhr="0" name="markerSymbol">
            <layer class="SimpleMarker" locked="0" enabled="1" pass="0">
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
        <shadow shadowRadius="0.5" shadowOffsetGlobal="1" shadowOffsetUnit="MM" shadowOpacity="0.7" shadowScale="100" shadowOffsetDist="0.01" shadowColor="0,0,0,255" shadowRadiusAlphaOnly="0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowDraw="0" shadowRadiusUnit="MM" shadowOffsetAngle="135"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format placeDirectionSymbol="0" reverseDirectionSymbol="0" autoWrapLength="0" multilineAlign="1" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" formatNumbers="0" addDirectionSymbol="0" wrapChar="" plussign="0" useMaxLineLengthForAutoWrap="1" decimals="3"/>
      <placement overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" yOffset="0.201" offsetUnits="Inch" centroidInside="0" polygonPlacementFlags="2" quadOffset="2" xOffset="0.101" distUnits="MM" priority="0" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" placement="1" maxCurvedCharAngleIn="25" preserveRotation="1" rotationAngle="0" layerType="PointGeometry" overrunDistance="0" geometryGenerator="" centroidWhole="0" overrunDistanceUnit="MM" dist="0" repeatDistanceUnits="MM" distMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" geometryGeneratorType="PointGeometry" repeatDistance="0" maxCurvedCharAngleOut="-25" placementFlags="10" offsetType="0" fitInPolygonOnly="0" geometryGeneratorEnabled="0"/>
      <rendering obstacleType="0" displayAll="0" obstacleFactor="0.98" obstacle="0" scaleMin="1" minFeatureSize="0" maxNumLabels="2000" fontLimitPixelSize="0" zIndex="0" fontMaxPixelSize="10000" mergeLines="0" labelPerPart="0" upsidedownLabels="1" drawLabels="1" limitNumLabels="0" scaleMax="10000000" scaleVisibility="0" fontMinPixelSize="3"/>
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
          <Option type="QString" value="point_on_exterior" name="labelAnchorPoint"/>
          <Option type="QString" value="&lt;symbol alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; type=&quot;line&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; enabled=&quot;1&quot; pass=&quot;0&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
    </property>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory scaleBasedVisibility="0" backgroundColor="#ffffff" penWidth="0" labelPlacementMethod="XHeight" lineSizeScale="3x:0,0,0,0,0,0" barWidth="5" enabled="0" backgroundAlpha="255" showAxis="1" minScaleDenominator="0" maxScaleDenominator="1e+08" spacingUnit="MM" rotationOffset="270" scaleDependency="Area" direction="0" penAlpha="255" penColor="#000000" height="15" spacing="5" sizeType="MM" diagramOrientation="Up" opacity="1" lineSizeType="MM" spacingUnitScale="3x:0,0,0,0,0,0" width="15" sizeScale="3x:0,0,0,0,0,0" minimumSize="0">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
      <attribute field="" color="#000000" label=""/>
      <axisSymbol>
        <symbol alpha="1" clip_to_extent="1" type="line" force_rhr="0" name="">
          <layer class="SimpleLine" locked="0" enabled="1" pass="0">
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
  <DiagramLayerSettings linePlacementFlags="18" dist="0" priority="0" placement="0" zIndex="0" showAll="1" obstacle="0">
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
    <constraint constraints="0" field="country" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="city" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="region" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="temperature" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="temperature_unit" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="date" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="direction" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="direction_unit" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="speed" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="speed_unit" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="humidity" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="humidity_unit" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="pressure" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="pressure_unit" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="visibility" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="visibility_unit" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="sunrise" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="sunset" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="icon" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="lat" notnull_strength="0" unique_strength="0" exp_strength="0"/>
    <constraint constraints="0" field="lon" notnull_strength="0" unique_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="country" desc="" exp=""/>
    <constraint field="city" desc="" exp=""/>
    <constraint field="region" desc="" exp=""/>
    <constraint field="temperature" desc="" exp=""/>
    <constraint field="temperature_unit" desc="" exp=""/>
    <constraint field="date" desc="" exp=""/>
    <constraint field="direction" desc="" exp=""/>
    <constraint field="direction_unit" desc="" exp=""/>
    <constraint field="speed" desc="" exp=""/>
    <constraint field="speed_unit" desc="" exp=""/>
    <constraint field="humidity" desc="" exp=""/>
    <constraint field="humidity_unit" desc="" exp=""/>
    <constraint field="pressure" desc="" exp=""/>
    <constraint field="pressure_unit" desc="" exp=""/>
    <constraint field="visibility" desc="" exp=""/>
    <constraint field="visibility_unit" desc="" exp=""/>
    <constraint field="sunrise" desc="" exp=""/>
    <constraint field="sunset" desc="" exp=""/>
    <constraint field="icon" desc="" exp=""/>
    <constraint field="lat" desc="" exp=""/>
    <constraint field="lon" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;humidity&quot;" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column type="actions" width="-1" hidden="1"/>
      <column type="field" width="-1" hidden="0" name="country"/>
      <column type="field" width="-1" hidden="0" name="city"/>
      <column type="field" width="-1" hidden="0" name="region"/>
      <column type="field" width="-1" hidden="0" name="temperature"/>
      <column type="field" width="-1" hidden="0" name="temperature_unit"/>
      <column type="field" width="-1" hidden="0" name="date"/>
      <column type="field" width="-1" hidden="0" name="direction"/>
      <column type="field" width="-1" hidden="0" name="direction_unit"/>
      <column type="field" width="-1" hidden="0" name="speed"/>
      <column type="field" width="-1" hidden="0" name="speed_unit"/>
      <column type="field" width="-1" hidden="0" name="humidity"/>
      <column type="field" width="-1" hidden="0" name="humidity_unit"/>
      <column type="field" width="-1" hidden="0" name="pressure"/>
      <column type="field" width="-1" hidden="0" name="pressure_unit"/>
      <column type="field" width="-1" hidden="0" name="visibility"/>
      <column type="field" width="-1" hidden="0" name="visibility_unit"/>
      <column type="field" width="-1" hidden="0" name="sunrise"/>
      <column type="field" width="-1" hidden="0" name="sunset"/>
      <column type="field" width="-1" hidden="0" name="icon"/>
      <column type="field" width="-1" hidden="0" name="lat"/>
      <column type="field" width="-1" hidden="0" name="lon"/>
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
    <field editable="1" name="city"/>
    <field editable="1" name="country"/>
    <field editable="1" name="date"/>
    <field editable="1" name="direction"/>
    <field editable="1" name="direction_unit"/>
    <field editable="1" name="humidity"/>
    <field editable="1" name="humidity_unit"/>
    <field editable="1" name="icon"/>
    <field editable="1" name="lat"/>
    <field editable="1" name="lon"/>
    <field editable="1" name="pressure"/>
    <field editable="1" name="pressure_unit"/>
    <field editable="1" name="region"/>
    <field editable="1" name="speed"/>
    <field editable="1" name="speed_unit"/>
    <field editable="1" name="sunrise"/>
    <field editable="1" name="sunset"/>
    <field editable="1" name="temperature"/>
    <field editable="1" name="temperature_unit"/>
    <field editable="1" name="visibility"/>
    <field editable="1" name="visibility_unit"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="Celsius"/>
    <field labelOnTop="0" name="City"/>
    <field labelOnTop="0" name="Country"/>
    <field labelOnTop="0" name="Date"/>
    <field labelOnTop="0" name="Direction"/>
    <field labelOnTop="0" name="Humidity"/>
    <field labelOnTop="0" name="Icon"/>
    <field labelOnTop="0" name="Lat"/>
    <field labelOnTop="0" name="Locations"/>
    <field labelOnTop="0" name="Lon"/>
    <field labelOnTop="0" name="Pressure"/>
    <field labelOnTop="0" name="Region"/>
    <field labelOnTop="0" name="Speed"/>
    <field labelOnTop="0" name="Sunrise"/>
    <field labelOnTop="0" name="Sunset"/>
    <field labelOnTop="0" name="Temp"/>
    <field labelOnTop="0" name="Unit"/>
    <field labelOnTop="0" name="Visibility"/>
    <field labelOnTop="0" name="city"/>
    <field labelOnTop="0" name="country"/>
    <field labelOnTop="0" name="date"/>
    <field labelOnTop="0" name="direction"/>
    <field labelOnTop="0" name="direction_unit"/>
    <field labelOnTop="0" name="humidity"/>
    <field labelOnTop="0" name="humidity_unit"/>
    <field labelOnTop="0" name="icon"/>
    <field labelOnTop="0" name="lat"/>
    <field labelOnTop="0" name="lon"/>
    <field labelOnTop="0" name="pressure"/>
    <field labelOnTop="0" name="pressure_unit"/>
    <field labelOnTop="0" name="region"/>
    <field labelOnTop="0" name="speed"/>
    <field labelOnTop="0" name="speed_unit"/>
    <field labelOnTop="0" name="sunrise"/>
    <field labelOnTop="0" name="sunset"/>
    <field labelOnTop="0" name="temperature"/>
    <field labelOnTop="0" name="temperature_unit"/>
    <field labelOnTop="0" name="visibility"/>
    <field labelOnTop="0" name="visibility_unit"/>
  </labelOnTop>
  <dataDefinedFieldProperties/>
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
