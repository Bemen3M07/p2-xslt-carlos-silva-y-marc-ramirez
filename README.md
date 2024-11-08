Periodico.xslt ----------------------------------------------------------------------------------------------------------------------------------------------------------------------

Hoja de estilos XSLT para transformar un archivo XML de noticias en una página web HTML estilizada. El propósito es mostrar noticias organizadas por tema, cada una con un título, fecha, autor y contenido. La interfaz está diseñada para ser limpia, profesional y fácil de leer, utilizando colores oscuros y resaltados en blanco y azul.

La estructura HTML que incluimos:

Cabecera (<head>): Contiene el título de la página (Casmark) y estilos CSS para la presentación.
Cuerpo (<body>): Organizado de la siguiente forma:
Título principal: Un título centrado que dice "Noticiero Casmark".
Secciones por tema: Cada tema está representado con un encabezado (<h2>) que toma el atributo nombre del elemento <tema>.
Noticias: Cada noticia incluye:
Título (<div class="titulo">)
Fecha (<div class="fecha">)
Autor (<div class="autor">)
Contenido (<div class="contenido">)
Pie de página (<footer>): Incluye un mensaje de derechos reservados, los nombres de los creadores y un enlace a un formulario de registro para obtener más información.

En tema css simplemente decoración y restructura visual

PeriodicoXML -------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Este archivo XML almacena un conjunto de noticias organizadas por temas. Cada noticia incluye información como título, fecha, autor y contenido. El formato visual que usamos es ed de la hoja de estilos periodico.xslt, que convierte las noticias en un formato web amigable y visualmente atractivo.

El archivo está estructurado de la siguiente forma:

Raíz (<noticias>): Contiene todos los temas y noticias.
Temas (<tema>): Cada tema representa una categoría de noticias, como Política, Deportes, Tecnología, Moda y Videojuegos. Cada tema tiene un atributo nombre que identifica la categoría.
Noticias (<noticia>): Dentro de cada tema, se listan noticias individuales. Cada noticia incluye los siguientes elementos:
<titulo>: El título de la noticia.
<fecha>: La fecha de publicación de la noticia.
<autor>: El autor de la noticia.
<contenido>: El contenido o descripción de la noticia.
