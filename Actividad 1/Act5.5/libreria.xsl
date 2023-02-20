<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body style="background-color:DimGrey;">
                <h1 style="color:Lavender;">Mi biblioteca</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libreria">
        <table border="1">
            <tr style="background-color:MediumPurple;">
                <th>isbn</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Editor</th>
                <th>Num. Páginas</th>
                <th>Precio</th>
            </tr>
            <xsl:apply-templates select="libro"/>
        </table>
    </xsl:template>

    <xsl:template match="libro">
        <tr style="background-color:DarkGrey;">
            <td><xsl:apply-templates select="isbn"/></td>
            <td><xsl:apply-templates select="titulo"/></td>
            <td><xsl:apply-templates select="autor"/></td>
            <td><xsl:apply-templates select="editor"/></td>
            <xsl:choose>
                <xsl:when test="numPaginas &gt;150">
                    <td bgcolor="#800000"><xsl:apply-templates select="numPaginas"/></td>
                </xsl:when>
                <xsl:otherwise>
                    <td><xsl:apply-templates select="numPaginas"/></td>
                </xsl:otherwise>
            </xsl:choose>
            <td><xsl:apply-templates select="precio"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="isbn">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="titulo">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="autor">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="editor">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="numPaginas">
        <xsl:value-of select="."/>
    </xsl:template>
    <xsl:template match="precio">
        <xsl:value-of select="."/>
    </xsl:template>

</xsl:stylesheet>