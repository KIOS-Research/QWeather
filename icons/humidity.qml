<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis maxScale="0" simplifyDrawingTol="1" styleCategories="AllStyleCategories" version="3.12.0-București" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="0" simplifyAlgorithm="0" minScale="100000000" simplifyLocal="1" readOnly="1" labelsEnabled="1" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="RuleRenderer" enableorderby="0" forceraster="0" symbollevels="0">
    <rules key="{1ec63c13-2fe2-4453-9f82-b9526d38d0ba}">
      <rule symbol="0" key="{412017c1-1046-4002-b52f-76444a6c86a6}" filter="(to_string(&quot;humidity&quot;)) >= 24.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 35.000000" label="24 - 35 %"/>
      <rule symbol="1" key="{3ba65f9f-be43-46cb-aab0-7b032c343cc6}" filter="(to_string(&quot;humidity&quot;)) > 35.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 45.000000" label="35 - 45 %"/>
      <rule symbol="2" key="{adac0696-9133-49a5-8287-fe4198d98347}" filter="(to_string(&quot;humidity&quot;)) > 45.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 55.000000" label="45 - 55 %"/>
      <rule symbol="3" key="{8d0b3097-8154-4f3f-a1ff-6ab1976bd937}" filter="(to_string(&quot;humidity&quot;)) > 55.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 65.000000" label="55 - 65 %"/>
      <rule symbol="4" key="{7291a84c-58ef-470c-aed6-6c22a678d51d}" filter="(to_string(&quot;humidity&quot;)) > 65.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 75.000000" label="65 - 75 %"/>
      <rule symbol="5" key="{9410e550-00cf-4435-9059-14d57b436f35}" filter="(to_string(&quot;humidity&quot;)) > 75.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 80.000000" label="75 - 80 %"/>
      <rule symbol="6" key="{76cc9462-c2f6-40fc-80f6-0969844d458b}" filter="(to_string(&quot;humidity&quot;)) > 80.000000 AND (to_string(&quot;humidity&quot;)) &lt;= 42.000000" label="> 80 %"/>
    </rules>
    <symbols>
      <symbol type="marker" alpha="0.995" clip_to_extent="1" force_rhr="0" name="0">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
      <symbol type="marker" alpha="0.995" clip_to_extent="1" force_rhr="0" name="1">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
      <symbol type="marker" alpha="0.995" clip_to_extent="1" force_rhr="0" name="2">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
      <symbol type="marker" alpha="0.995" clip_to_extent="1" force_rhr="0" name="3">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
      <symbol type="marker" alpha="0.995" clip_to_extent="1" force_rhr="0" name="4">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
      <symbol type="marker" alpha="0.995" clip_to_extent="1" force_rhr="0" name="5">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
      <symbol type="marker" alpha="0.995" clip_to_extent="1" force_rhr="0" name="6">
        <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
      <text-style fontSize="10" namedStyle="Κανονικά" blendMode="0" fontCapitals="0" previewBkgrdColor="255,255,255,255" textOrientation="horizontal" fontStrikeout="0" textOpacity="1" fontItalic="0" fontSizeUnit="Point" fontWeight="50" fieldName="CASE WHEN to_string(temperature_unit) = 'C'  THEN  to_string(city) +  to_string('\n') + to_string(to_string( &quot;humidity&quot;)) + ' ' + to_string(humidity_unit)&#xd;&#xa;  WHEN to_string(temperature_unit) = 'F' THEN to_string(city) +  to_string('\n') + to_string(to_string( &quot;humidity&quot;)) + ' ' + to_string(humidity_unit)&#xd;&#xa;END  " useSubstitutions="0" fontKerning="1" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontUnderline="0" fontLetterSpacing="0" multilineHeight="1" fontFamily="MS Shell Dlg 2" textColor="9,38,180,255" isExpression="1" fontWordSpacing="0">
        <text-buffer bufferColor="255,255,255,255" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferOpacity="1" bufferSizeUnits="MM" bufferSize="0.3" bufferNoFill="0" bufferJoinStyle="128" bufferDraw="1"/>
        <text-mask maskOpacity="1" maskEnabled="0" maskJoinStyle="128" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskType="0" maskSizeUnits="MM" maskedSymbolLayers="" maskSize="0"/>
        <background shapeBorderWidthUnit="MM" shapeDraw="0" shapeRotation="0" shapeSizeType="0" shapeOffsetY="0" shapeType="0" shapeSVGFile="" shapeBlendMode="0" shapeRotationType="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeBorderWidth="0" shapeSizeY="0" shapeRadiiX="0" shapeSizeX="0" shapeOffsetX="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeOpacity="1" shapeBorderColor="128,128,128,255" shapeJoinStyle="64" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeOffsetUnit="MM" shapeFillColor="255,255,255,255">
          <symbol type="marker" alpha="1" clip_to_extent="1" force_rhr="0" name="markerSymbol">
            <layer enabled="1" class="SimpleMarker" locked="0" pass="0">
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
        <shadow shadowRadius="0.5" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowUnder="0" shadowScale="100" shadowOffsetUnit="MM" shadowRadiusAlphaOnly="0" shadowOffsetGlobal="1" shadowOffsetDist="0.01" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowOpacity="0.7" shadowBlendMode="6" shadowOffsetAngle="135" shadowRadiusUnit="MM"/>
        <dd_properties>
          <Option type="Map">
            <Option type="QString" value="" name="name"/>
            <Option name="properties"/>
            <Option type="QString" value="collection" name="type"/>
          </Option>
        </dd_properties>
        <substitutions/>
      </text-style>
      <text-format autoWrapLength="0" reverseDirectionSymbol="0" addDirectionSymbol="0" placeDirectionSymbol="0" formatNumbers="0" wrapChar="" multilineAlign="1" decimals="3" useMaxLineLengthForAutoWrap="1" leftDirectionSymbol="&lt;" rightDirectionSymbol=">" plussign="0"/>
      <placement priority="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" dist="0" offsetType="0" geometryGeneratorEnabled="0" repeatDistanceUnits="MM" geometryGenerator="" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distMapUnitScale="3x:0,0,0,0,0,0" overrunDistance="0" maxCurvedCharAngleIn="25" centroidWhole="0" placementFlags="10" distUnits="MM" geometryGeneratorType="PointGeometry" rotationAngle="0" centroidInside="0" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceUnit="MM" yOffset="0.201" quadOffset="2" xOffset="0.101" offsetUnits="Inch" preserveRotation="1" layerType="PointGeometry" placement="1" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" repeatDistance="0"/>
      <rendering fontMaxPixelSize="10000" maxNumLabels="2000" labelPerPart="0" obstacle="0" minFeatureSize="0" obstacleType="0" displayAll="0" obstacleFactor="0.98" scaleVisibility="0" limitNumLabels="0" mergeLines="0" zIndex="0" fontMinPixelSize="3" upsidedownLabels="1" scaleMin="1" drawLabels="1" scaleMax="10000000" fontLimitPixelSize="0"/>
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
          <Option type="QString" value="&lt;symbol type=&quot;line&quot; alpha=&quot;1&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; name=&quot;symbol&quot;>&lt;layer enabled=&quot;1&quot; class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot;>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;60,60,60,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.3&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; value=&quot;&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; value=&quot;collection&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" name="lineSymbol"/>
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
    <DiagramCategory height="15" lineSizeType="MM" penWidth="0" spacingUnitScale="3x:0,0,0,0,0,0" penColor="#000000" scaleBasedVisibility="0" penAlpha="255" lineSizeScale="3x:0,0,0,0,0,0" backgroundAlpha="255" labelPlacementMethod="XHeight" rotationOffset="270" enabled="0" spacingUnit="MM" width="15" scaleDependency="Area" sizeType="MM" maxScaleDenominator="1e+08" minimumSize="0" sizeScale="3x:0,0,0,0,0,0" showAxis="1" opacity="1" direction="0" spacing="5" diagramOrientation="Up" backgroundColor="#ffffff" minScaleDenominator="0" barWidth="5">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute field="" color="#000000" label=""/>
      <axisSymbol>
        <symbol type="line" alpha="1" clip_to_extent="1" force_rhr="0" name="">
          <layer enabled="1" class="SimpleLine" locked="0" pass="0">
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
  <DiagramLayerSettings zIndex="0" priority="0" placement="0" showAll="1" obstacle="0" dist="0" linePlacementFlags="18">
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
    <default field="country" expression="" applyOnUpdate="0"/>
    <default field="city" expression="" applyOnUpdate="0"/>
    <default field="region" expression="" applyOnUpdate="0"/>
    <default field="temperature" expression="" applyOnUpdate="0"/>
    <default field="temperature_unit" expression="" applyOnUpdate="0"/>
    <default field="date" expression="" applyOnUpdate="0"/>
    <default field="direction" expression="" applyOnUpdate="0"/>
    <default field="direction_unit" expression="" applyOnUpdate="0"/>
    <default field="speed" expression="" applyOnUpdate="0"/>
    <default field="speed_unit" expression="" applyOnUpdate="0"/>
    <default field="humidity" expression="" applyOnUpdate="0"/>
    <default field="humidity_unit" expression="" applyOnUpdate="0"/>
    <default field="pressure" expression="" applyOnUpdate="0"/>
    <default field="pressure_unit" expression="" applyOnUpdate="0"/>
    <default field="visibility" expression="" applyOnUpdate="0"/>
    <default field="visibility_unit" expression="" applyOnUpdate="0"/>
    <default field="sunrise" expression="" applyOnUpdate="0"/>
    <default field="sunset" expression="" applyOnUpdate="0"/>
    <default field="icon" expression="" applyOnUpdate="0"/>
    <default field="lat" expression="" applyOnUpdate="0"/>
    <default field="lon" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="country" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="city" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="region" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="temperature" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="temperature_unit" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="date" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="direction" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="direction_unit" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="speed" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="speed_unit" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="humidity" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="humidity_unit" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="pressure" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="pressure_unit" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="visibility" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="visibility_unit" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="sunrise" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="sunset" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="icon" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="lat" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
    <constraint field="lon" exp_strength="0" constraints="0" unique_strength="0" notnull_strength="0"/>
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
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="&quot;humidity&quot;" sortOrder="0">
    <columns>
      <column type="actions" hidden="1" width="-1"/>
      <column type="field" hidden="0" width="-1" name="country"/>
      <column type="field" hidden="0" width="-1" name="city"/>
      <column type="field" hidden="0" width="-1" name="region"/>
      <column type="field" hidden="0" width="-1" name="temperature"/>
      <column type="field" hidden="0" width="-1" name="temperature_unit"/>
      <column type="field" hidden="0" width="-1" name="date"/>
      <column type="field" hidden="0" width="-1" name="direction"/>
      <column type="field" hidden="0" width="-1" name="direction_unit"/>
      <column type="field" hidden="0" width="-1" name="speed"/>
      <column type="field" hidden="0" width="-1" name="speed_unit"/>
      <column type="field" hidden="0" width="-1" name="humidity"/>
      <column type="field" hidden="0" width="-1" name="humidity_unit"/>
      <column type="field" hidden="0" width="-1" name="pressure"/>
      <column type="field" hidden="0" width="-1" name="pressure_unit"/>
      <column type="field" hidden="0" width="-1" name="visibility"/>
      <column type="field" hidden="0" width="-1" name="visibility_unit"/>
      <column type="field" hidden="0" width="-1" name="sunrise"/>
      <column type="field" hidden="0" width="-1" name="sunset"/>
      <column type="field" hidden="0" width="-1" name="icon"/>
      <column type="field" hidden="0" width="-1" name="lat"/>
      <column type="field" hidden="0" width="-1" name="lon"/>
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
