<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body style="background-color:DarkGrey;">
                <h1 style="color:Lavender;">Mi biblioteca</h1>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="libreria">
        <table>
            <tr style="background-color:MediumPurple;">
                <th>isbn</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Editor</th>
                <th>Núm. Páginas</th>
                <th>Precio</th>
            </tr>
            <xsl:apply-templates select="libro"/>
        </table>
    </xsl:template>

    <xsl:template match="libro">
        <tr>
            <td><xsl:apply-templates select="isbn"/></td>
            <td><xsl:apply-templates select="titulo"/></td>
            <td><xsl:apply-templates select="autor"/></td>
            <td><xsl:apply-templates select="editor"/></td>
            <td><xsl:apply-templates select="numPaginas"/></td>
            <td><xsl:apply-templates select="precio"/></td>
        </tr>
    </xsl:template>

    <xsl:template match="isbn">
        <td><xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="titulo">
        <td><xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="autor">
        <td><xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="editor">
        <td><xsl:value-of select="."/></td>
    </xsl:template>
    <xsl:template match="numPaginas">
        
    </xsl:template>
    <xsl:template match="precio">
        <td><xsl:value-of select="."/></td>
    </xsl:template>

</xsl:stylesheet>