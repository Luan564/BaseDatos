<?php
// Datos para la tabla (pueden venir de una base de datos, por ejemplo)
$datos = [
["Nombre", "Edad", "Ciudad"],
["Juan Pérez", 25, "Ciudad de M ́exico"],
["María López", 30, "Guadalajara"],
["Carlos Sánchez", 22, "Monterrey"],
];
// Iniciar la tabla HTML
$html = '<table border="1" cellpadding="10" cellspacing="0">';
// Generar las filas de la tabla
foreach ($datos as $fila) {
$html .= '<tr>'; // Abrir una fila
foreach ($fila as $celda) {
$html .= '<td>' . $celda . '</td>'; // Agregar celdas
}
$html .= '</tr>'; // Cerrar la fila
}
// Cerrar la tabla HTML
$html .= '</table>';
// Mostrar la tabla generada
echo $html;

?>
<?php
// Datos para el botón
$texto_boton = "Haz clic aquí"; // Texto del botón
$url_destino = "variables.php"; // URL a la que redirige el botón
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