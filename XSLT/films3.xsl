<?xml version="1.0" encoding="UTF-8"?>
<!-- la ligne suivante doit être avant la balise xsl:stylesheet -->
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" encoding="UTF-8"/>

  <xsl:template match="/">
        <xsl:text>&#10;</xsl:text>
        <xsl:processing-instruction name="xml-stylesheet">
            <xsl:text>href="artistes.xsl" type="text/xsl"</xsl:text>
        </xsl:processing-instruction>
        <xsl:text>&#10;</xsl:text>
        <ARTISTES>
            <xsl:apply-templates select="//ARTISTE"/>
        </ARTISTES>
    </xsl:template>
    <xsl:template match="ARTISTE">
        <ARTISTE>
            <xsl:attribute name="naissance">
				<xsl:value-of select="ANNEENAISS" />
			</xsl:attribute>
         <ACTNOM>
          <xsl:value-of select="ACTNOM"/>
         </ACTNOM>
         <ACTPNOM>
          <xsl:value-of select="ACTPNOM"/>
         </ACTPNOM>
        </ARTISTE>
    </xsl:template>

</xsl:stylesheet>
