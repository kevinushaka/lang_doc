<?xml version="1.0" encoding="ISO-8859-1"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>

<xsl:stylesheet version="1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:output method="xml" indent="yes"/>
 <xsl:template match="/">
 <xsl:comment> G�n�r� par XSLT � partir de cd-catalog, et lui m�me trait� par XSLT vers HTML </xsl:comment>
  <xsl:text>&#10;</xsl:text>
  <xsl:processing-instruction name="xml-stylesheet">
   <xsl:text>href="artistes.xsl" type="text/xsl"</xsl:text>
  </xsl:processing-instruction>
  <xsl:text>&#10;</xsl:text>
  <Artistes>
  <xsl:comment> G�n�r� par XSLT � partir de cd-catalog, et lui m�me trait� par XSLT vers HTML </xsl:comment>
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