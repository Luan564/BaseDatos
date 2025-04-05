<?php
// Datos para el botón
$texto_boton = "Haz clic aquí"; // Texto del botón
$url_destino = "tablas.php"; // URL a la que redirige el botón
$color_fondo = "#007BFF"; // Color de fondo del botón
$color_texto = "#FFFFFF"; // Color del texto del botón
// Generar el código HTML del botón
$html = '
<a href="' . $url_destino . '" style="text-decoration: none;">
<button style="background-color: ' . $color_fondo . '; color: ' . $color_texto . ';
padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">
' . $texto_boton . '
</button>
</a>
';
// Mostrar el botón generado
echo $html;
?>