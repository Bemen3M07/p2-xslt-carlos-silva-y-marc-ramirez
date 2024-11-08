<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Recibimos y sanitizamos los datos del formulario
    $usuario = htmlspecialchars($_POST['usuario']);
    $password = htmlspecialchars($_POST['password']);
    $nombre = htmlspecialchars($_POST['nombre']);
    $apellidos = htmlspecialchars($_POST['apellidos']);
    $correo = htmlspecialchars($_POST['correo']);

    } else {
    // Mostrar el formulario si aún no se ha enviado
    ?>

    <!DOCTYPE html>
    <html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Casmark</title>
        <style>
            body { font-family: Arial, sans-serif; background-color: #f0f0f0; color: #333; }
            .formulario { width: 300px; margin: 50px auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #fff; }
            .formulario h2 { text-align: center; color: #0066cc; }
            .formulario label { display: block; margin-top: 10px; }
            .formulario input[type="text"], .formulario input[type="email"], .formulario input[type="password"] { width: 93%; padding: 8px; margin-top: 5px; }
            .formulario input[type="submit"] { width: 100%; padding: 10px; background-color: #0066cc; color: #fff; border: none; border-radius: 3px; cursor: pointer; margin-top: 20px; }
            .formulario input[type="submit"]:hover { background-color: #005bb5; }
        </style>
    </head>
    <body>
        <div class="formulario">
            <h2>Registro de Casmark</h2>
            <form method="POST" action="">
                <label for="usuario">Usuario:</label>
                <input type="text" id="usuario" name="usuario" required>

                <label for="password">Contraseña:</label>
                <input type="password" id="password" name="password" required>

                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" required>

                <label for="apellidos">Apellidos:</label>
                <input type="text" id="apellidos" name="apellidos" required>

                <label for="correo">Correo electrónico:</label>
                <input type="email" id="correo" name="correo" required>

                <input type="submit" value="Registrar">
            </form>
        </div>
    </body>
    </html>

    <?php
}
?>
