<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    
    <!-- Plantilla principal -->
    <xsl:template match="/noticias">
        <html>
            <head>
                <title>Noticias</title>
                <style>
                    body { font-family: Arial, sans-serif; background-color: #f4f4f9; color: #333; }
                    h1 { color: #444; text-align: center; }
                    h2 { background-color: #0066cc; color: white; padding: 5px; }
                    .noticia { margin-bottom: 1em; padding: 10px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; }
                    .titulo { font-weight: bold; font-size: 1.2em; }
                    .fecha { color: #888; font-size: 0.9em; }
                    .autor { font-size: 0.9em; color: #555; }
                    .contenido { margin-top: 5px; }
                </style>
            </head>
            <body>
                <h1>Noticiero Casmark</h1>
                
                
                <xsl:for-each select="tema">
                    <h2><xsl:value-of select="@nombre" /></h2>
                    
                  
                    <xsl:for-each select="noticia">
                        <div class="noticia">
                            <div class="titulo">
                                <xsl:value-of select="titulo" />
                            </div>
                            <div class="fecha">
                                Fecha: <xsl:value-of select="fecha" />
                            </div>
                            <div class="autor">
                                Autor: <xsl:value-of select="autor" />
                            </div>
                            <div class="contenido">
                                <xsl:value-of select="contenido" />
                            </div>
                        </div>
                    </xsl:for-each>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>

