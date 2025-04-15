<?php
// Generar un botón dentro de un formulario
$html = '
<form action="tablas.php" method="POST">
<button type="submit" name="accion" value="enviar" style="background-color: #28A745;
color: #FFFFFF; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;">
Enviar Datos
</button>
</form>
';
echo $html;
?>