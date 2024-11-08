PeriodicoXSLT.

Este archivo XML contiene noticias organizadas por temas: Política, Deportes, Tecnología, Moda y Videojuegos. Cada noticia incluye título, fecha, autor y contenido breve.

Estructura:
- <noticias>: Elemento raíz.
- <tema nombre="...">: Categorías con noticias.
- <noticia>: Elemento individual con detalles.

Uso: Transformado en HTML con periodico.xslt para visualización en la web.

PeriodicoXML.

Este archivo XSL transforma un archivo XML de noticias en un documento HTML con estilo básico.

Estructura:
- La plantilla principal (<xsl:template match="/noticias">) genera la estructura HTML.
- Título principal "Noticiero Casmark" y secciones para cada tema de noticias.
- Cada noticia contiene título, fecha, autor y contenido.

Estilo:
- HTML estructurado con elementos como h1, h2 y div para organizar los temas y noticias.
- Diseño con CSS en línea: fondo gris oscuro, encabezados de color, y tarjetas blancas para cada noticia.
- Pie de página con derechos reservados y un enlace para registrarse.
