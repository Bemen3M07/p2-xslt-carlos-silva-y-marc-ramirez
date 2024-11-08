<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    
    /* Plantilla principal que aplica a la raíz del documento XML 'noticias' */
    <xsl:template match="/noticias">
        <html>
            <head>
                <title>Casmark</title>
                
               /* Estilos CSS para personalizar la apariencia de la página */
                <style>
                    body { font-family: Arial, sans-serif; background-color: rgb(120, 113, 108); color: #333; }
                    h1 { color: white; text-align: center; }
                    h2 { background-color: #0066cc; color: white; padding: 5px; }
                    .noticia { margin-bottom: 1em; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; }
                    .titulo { font-weight: bold; font-size: 1.2em; }
                    .fecha { color: #888; font-size: 0.9em; }
                    .autor { font-size: 0.9em; color: #555; }
                    .contenido { margin-top: 5px; }
                    footer { background-color: #333; color: #f4f4f9; text-align: center; padding: 10px; margin-top: 20px; font-size: 1.0em; }

                    /* Estilos para los enlaces en el pie de página */
                    footer a {
                        color: #f4f4f9;
                        text-decoration: none;
                        transition: color 0.3s, text-decoration 0.3s;
                    }
                    footer a:hover {
                        color: #ffcc00; 
                        text-decoration: underline; 
                        font-weight: bold; 
                    }
                </style>
            </head>
            
            <body>
               
                <h1>Noticiero Casmark</h1>
                
               /* Aqui hemos hecho un bucle para cada tema en el XML */
                <xsl:for-each select="tema">
                    /* Subtitulo con el nombre del tema *7
                    <h2><xsl:value-of select="@nombre" /></h2>
                    
                    /* Bucle interno para cada noticia dentro de cada tema *7
                    <xsl:for-each select="noticia">
                     /* Div con estilo de clase 'noticia' para cada artículo de noticias */
                        <div class="noticia">
                           /* Título de la noticia */
                            <div class="titulo">
                                <xsl:value-of select="titulo" />
                            </div>
                            
                            /*Fecha de la noticia */
                            <div class="fecha">
                                Fecha: <xsl:value-of select="fecha" />
                            </div>
                            
                           /*Autor de la noticia */
                            <div class="autor">
                                Autor: <xsl:value-of select="autor" />
                            </div>
                            
                            /* Resumen del contenido de la noticia */
                            <div class="contenido">
                                <xsl:value-of select="contenido" />
                            </div>
                        </div>
                    </xsl:for-each>
                </xsl:for-each>
                
            </body>
            
            /*Pie de pagina y enlace al registro*/
            <footer>
                <p>2024 Noticias Internacionales. Todos los derechos reservados.</p>
                <p>Creado por Carlos Silva y Marc Ramirez.</p>
                <p><a href="Formulario.php">Regístrate aquí para más información</a></p>
            </footer>
        </html>
    </xsl:template>
</xsl:stylesheet>

