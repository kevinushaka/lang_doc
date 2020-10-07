<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>L'année et les titres de films en HTML via XML</title>
            </head>
            <body>
                <h1>Voici la liste des <xsl:value-of select="count(//FILM)" /> films </h1>
                <xsl:for-each select="FILMS/FILM">
                <xsl:sort select="@Annee" order="descending" data-type="number" />
                
                <xsl:choose>
                    <xsl:when test="@Annee > 1888">
                        <strong>
                            <xsl:value-of select="@Annee"/>:
                            <xsl:value-of select="TITRE"/><br/>
                        </strong>
                    </xsl:when>
                    <xsl:otherwise>
                        <em>
                            <xsl:value-of select="@Annee"/>:
                            <xsl:value-of select="TITRE"/><br/>
                        </em>
                    </xsl:otherwise>
                </xsl:choose> 
                 
                
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>