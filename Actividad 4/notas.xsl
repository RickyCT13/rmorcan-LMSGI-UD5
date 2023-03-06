<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"/>

    <xsl:template match="/">
    <html>
        <body style="background-color:DimGrey;">
            <h1 style="color:Lavender;">Notas</h1>
            <xsl:apply-templates/>
        </body>
    </html>
    </xsl:template>

    <xsl:template match="notas">
        <table border="1">
            <thead>
                <tr>
                    <th colspan="3">Datos</th>
                    <th colspan="3">Notas</th>
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
        </table>
    </xsl:template>
</xsl:stylesheet>