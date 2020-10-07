<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="ISO-8859-1"/>

    <xsl:template match="/CATALOG/CD">
        <html>
            <head>
                <title>Liste de titres et artistes</title>
            </head>
            <body>
                <h2>Liste de titres et artistes</h2>
                    <p> Title: 
                <span style="color:#ff0000"><xsl:value-of select="TITLE"/></span><br/> Artist: 
                <span style="color:#00ff00"><xsl:value-of select="ARTIST"/></span><br/></p>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>