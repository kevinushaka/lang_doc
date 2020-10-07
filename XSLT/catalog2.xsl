<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="ISO-8859-1"/>

    <xsl:template match="/">
        <xsl:text>&#10;</xsl:text>
        <xsl:processing-instruction name="xml-stylesheet">
            <xsl:text>href="artistes.xsl" type="text/xsl"</xsl:text>
        </xsl:processing-instruction>
        <xsl:text>&#10;</xsl:text>
        <Artistes>
            <xsl:apply-templates/>
        </Artistes>
    </xsl:template>
    <xsl:template match="CD">
        <Artiste>
         <Nom>
          <xsl:value-of select="ARTIST"/>
         </Nom>
         <Pays>
          <xsl:value-of select="COUNTRY"/>
         </Pays>
        </Artiste>
    </xsl:template>

</xsl:stylesheet>