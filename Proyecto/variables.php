<?php
// Datos de la imagen y el enlace
$imagen_url = "https://lc.fie.umich.mx/~jrincon/index_archivos/image005.gif"; // URL de la imagen
$enlace_url = "https://www.fie.umich.mx"; // URL a la que redirige el enlace
$alt_text = "Descripción de la imagen"; // Texto alternativo para la imagen
$width = 300; // Ancho de la imagen (opcional)
$height = 200; // Alto de la imagen (opcional)


// Generar el código HTML
$html = '
<a href="' . $enlace_url . '" target="_blank">
    <img src="'.$imagen_url .'" alt="'.$alt_text.'" width="'.$width.'" height="'.$height.'">
</a>
';
// Mostrar el código HTML generado
echo $html;
?>

<?php
// Datos para el botón
$texto_boton = "Haz clic aquí"; // Texto del botón
$url_destino = "boton.php"; // URL a la que redirige el botón
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