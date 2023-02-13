<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet href="libreria.css" type="text/css"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body style="background-color:DimGrey;">
                <h1 style="color:Lavender;">Mi biblioteca personal</h1>
                <table border="4">
                    <tr bgcolor="RebeccaPurple" style="color:Lavender;">
                        <th>isbn</th>
                        <th>Titulo</th>
                        <th>Autor</th>
                        <th>Precio</th>
                    </tr>
                    <xsl:for-each select="libreria/libro">
                        <tr bgcolor="#454545" style="color:Lavender;">
                            <td>
                                <xsl:value-of select="isbn" />
                            </td>
                            <td>
                                <xsl:value-of select="titulo" />
                            </td>
                            <td>
                                <xsl:value-of select="autor" />
                            </td>
                            <td>
                                <xsl:value-of select="precio" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>