<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="ISO-8859-1"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Liste de titres et artistes</title>
            </head>
            <body>
                <h2>Liste de titres et artistes</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                      <th style="text-align:left">Title</th>
                      <th style="text-align:left">Artist</th>
                    </tr>
                    <xsl:for-each select="CATALOG/CD">
                    <xsl:if test="PRICE &gt; 10">
                      <tr>
                        <td><xsl:value-of select="TITLE"/></td>
                        <td><xsl:value-of select="ARTIST"/></td>
                      </tr>
                    </xsl:if>
                    </xsl:for-each>
                  </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>