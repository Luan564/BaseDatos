<?php
// Verificar si se enviaron datos por POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
// Recuperar los datos del formulario
$nombre = $_POST["nombre"];
$email = $_POST["email"];
// Validar que los campos no est ́en vacíos
if (!empty($nombre) && !empty($email)) {
// Mostrar los datos recibidos
echo "<h1>Datos Recibidos</h1>";
echo "<p><strong>Nombre:</strong> " . htmlspecialchars($nombre) . "</p>";
echo "<p><strong>Correo Electrónico:</strong> " . htmlspecialchars($email) . "</p>";
} else {
// Mostrar un mensaje de error si los campos están vacíos
echo "<p style=’color: red;’>Por favor, completa todos los campos.</p>";
}
} else {
// Si no se enviaron datos por POST, redirigir al formulario
header("Location: formulario.html");
exit();
}
?>