<?xml version="1.0" encoding="UTF-8"?>
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
                    <tr>
                        <xsl:choose>
                            <xsl:when test="precio &lt;25">
                                <td bgcolor="#228b22">
                                    <xsl:value-of select="isbn" />
                                </td>
                                <td bgcolor="#228b22">
                                    <xsl:value-of select="titulo" />
                                </td>
                                <td bgcolor="#228b22">
                                    <xsl:value-of select="autor" />
                                </td>
                                <td bgcolor="#228b22">
                                    <xsl:value-of select="precio" />
                                </td>
                            </xsl:when>
                            
                            <xsl:when test="precio &gt;25">
                                <td bgcolor="#8b0000">
                                    <xsl:value-of select="isbn" />
                                </td>
                                <td bgcolor="#8b0000">
                                    <xsl:value-of select="titulo" />
                                </td>
                                <td bgcolor="#8b0000">
                                    <xsl:value-of select="autor" />
                                </td>
                                <td bgcolor="#8b0000">
                                    <xsl:value-of select="precio" />
                                </td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td bgcolor="#0000ff">
                                    <xsl:value-of select="isbn" />
                                </td>
                                <td bgcolor="#0000ff">
                                    <xsl:value-of select="titulo" />
                                </td>
                                <td bgcolor="#0000ff">
                                    <xsl:value-of select="autor" />
                                </td>
                                <td bgcolor="#0000ff">
                                    <xsl:value-of select="precio" />
                                </td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>