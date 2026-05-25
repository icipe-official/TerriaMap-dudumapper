<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
  xmlns="http://www.opengis.net/sld"
  xmlns:ogc="http://www.opengis.net/ogc"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/sld http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">
  <!--
    Matches Terria "Kenya VL Facilities" (vl-by-type) in dudu.json:
      Diagnosis Only           -> #c026d3
      Diagnosis and Treatment  -> #22c55e
      other / null             -> #9ca3af
      stroke                   -> #1f2937, width 2

    GeoServer: upload as style "vl_facilities_by_type" and assign to each Dudu:*_facilities layer.
    If symbols do not appear, confirm the attribute name in the layer (VL_Facility_Type vs vl_facility_type).
  -->
  <UserLayer>
    <UserStyle>
      <Name>vl_facilities_by_type</Name>
      <Title>VL facilities by type</Title>
      <Abstract>Point symbols coloured by VL_Facility_Type (Kenya VL Facilities catalog style).</Abstract>
      <FeatureTypeStyle>
        <Rule>
          <Name>Diagnosis and Treatment</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>VL_Facility_Type</ogc:PropertyName>
              <ogc:Literal>Diagnosis and Treatment</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#22c55e</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#1f2937</CssParameter>
                  <CssParameter name="stroke-width">2</CssParameter>
                </Stroke>
              </Mark>
              <Size>20</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Diagnosis Only</Name>
          <ogc:Filter>
            <ogc:PropertyIsEqualTo>
              <ogc:PropertyName>VL_Facility_Type</ogc:PropertyName>
              <ogc:Literal>Diagnosis Only</ogc:Literal>
            </ogc:PropertyIsEqualTo>
          </ogc:Filter>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#c026d3</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#1f2937</CssParameter>
                  <CssParameter name="stroke-width">2</CssParameter>
                </Stroke>
              </Mark>
              <Size>20</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        <Rule>
          <Name>Unclassified</Name>
          <ElseFilter/>
          <PointSymbolizer>
            <Graphic>
              <Mark>
                <WellKnownName>circle</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#9ca3af</CssParameter>
                </Fill>
                <Stroke>
                  <CssParameter name="stroke">#1f2937</CssParameter>
                  <CssParameter name="stroke-width">1</CssParameter>
                </Stroke>
              </Mark>
              <Size>20</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
      </FeatureTypeStyle>
    </UserStyle>
  </UserLayer>
</StyledLayerDescriptor>
