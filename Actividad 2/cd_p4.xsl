<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <body style="background-color: darkslategray; font-family: Segoe UI;">
            <h1 style="color: dodgerblue;">Catálogo de CDs</h1>
            
            <table border="1">
                <thead style="background-color:dodgerblue;">
                  <tr>
                    <th rowspan="2">Album</th>
                    <th rowspan="2">Artista</th>
                    <th colspan="2">Cancion</th>
                    <th rowspan="2">Sello</th>
                    <th rowspan="2">Año</th>
                  </tr>
                  <tr>
                    <th>Titulo</th>
                    <th>Duracion</th>
                  </tr>
                </thead>
                <xsl:apply-templates/>
            </table>
        </body>
    </html>
    </xsl:template>
    
    <xsl:template match="catalogo">
        <!--<table border="1">-->
            <tbody style="background-color:cornflowerblue;">
                <xsl:for-each select="cd">
                    <xsl:if test="cancion[@duracion_segundos&lt;220]">
                    <tr>
                        <td><xsl:value-of select="album"/></td>
                        <td><xsl:value-of select="artista"/></td>
                        <td><xsl:value-of select="cancion/titulo"/></td>
                        <td><xsl:value-of select="cancion/duracion"/></td>
                        <td><xsl:value-of select="sello"/></td>
                        <td><xsl:value-of select="año"/></td>
                    </tr>
                    </xsl:if>
                </xsl:for-each>
            </tbody>
        <!--</table>-->
    </xsl:template>
</xsl:stylesheet>