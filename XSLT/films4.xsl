<?xml version="1.0" encoding="UTF-8"?>
<!-- la ligne suivante doit être avant la balise xsl:stylesheet -->
<!DOCTYPE xsl:stylesheet [ <!ENTITY nbsp "&#160;"> ]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

   <xsl:template match="FILM">
       <xsl:variable name="total">
           <xsl:call-template name="SumMarks">
               <xsl:with-param name="listMarks" select="notes/note"/>
           </xsl:call-template>
       </xsl:variable>
       <xsl:value-of select="TITRE"/><xsl:value-of-select="$total div count(notes/note)"/>
   </xsl:template>

   <xsl:template match="SumMarks">
    <xsl:paramname="listeNotes"/>
    <xsl:choose>
        <xsl:whentest="$listMarks">
            <xsl:variable name="note" select="$listeNotes[1]"/>
            <xsl:variable name="otherMarks">
                <xsl:call-template name="SumMarks">
                    <xsl:with-param name="listMarks" select="$listMarks[position() != 1]"/>
                </xsl:call-template>
            </xsl:variable>
            <xsl:value-of select="$mark+ $otherMarks"/>
        </xsl:when>
        <xsl:otherwise>0</otherwise>
    </xsl:choose>
   </xsl:template>

</xsl:stylesheet>
