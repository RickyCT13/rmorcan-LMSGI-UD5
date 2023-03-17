<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
    <html>
        <body style="background-color:DimGrey;">
            <h1 style="color:Lavender;">Notas</h1>
            <table border="1">
                <thead>
                    <!-- Si queremos que se muestren las notas en su celda
                        correspondiente y que no se muestre la matrícula,
                        tenemos que hacer que 'Notas' ocupe 4 columnas
                        en vez de tres.
                    -->
                    <tr>
                        <th colspan="2">Datos</th>
                        <th colspan="4">Notas</th>
                    </tr>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Cuestionarios</th>
                        <th>Tareas</th>
                        <th>Examen</th>
                        <th>Final</th>
                    </tr>
                </thead>
                <xsl:apply-templates/>
            </table>
        </body>
    </html>
    </xsl:template>

    <xsl:template match="notas">
        <tbody>
            <xsl:for-each select="//alumno[@convocatoria='Junio']">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="apellidos"/></td>
                    <td><xsl:value-of select="cuestionarios"/></td>
                    <td><xsl:value-of select="tareas"/></td>
                    <td><xsl:value-of select="examen"/></td>
                    <xsl:choose>
                      <xsl:when test="final>=9">
                        <td style="color:blue;">Sobresaliente</td>
                      </xsl:when>
                      <xsl:when test="final>=7">
                        <td style="color:dodgerblue;">Notable</td>
                      </xsl:when>
                      <xsl:when test="final>=6">
                        <td>Bien</td>
                      </xsl:when>
                      <xsl:when test="final>=5">
                        <td style="color:orange;">Suficiente</td>
                      </xsl:when>
                      <xsl:otherwise>
                        <td style="color:red;">Suspenso</td>
                      </xsl:otherwise>
                    </xsl:choose>
                </tr>
            </xsl:for-each>
        </tbody>
    </xsl:template>
</xsl:stylesheet>