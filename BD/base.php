<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
$nombre = $_POST["nombre"];
$email = $_POST["email"];
// echo $nombre."".$email."";
if (!empty($nombre) && !empty($email)) {
// Conectar a la base de datos
$conexion = new mysqli("localhost", "Luis", "5648", "tienda_moda");
// Verificar la conexión
if ($conexion->connect_error) {
die("Error de conexión: " . $conexion->connect_error);
}
// Insertar datos en la base de datos
//echo $nombre."".$email."-----";
$sql = "INSERT INTO clientes (nombre, email) VALUES ('$nombre', '$email')";
//echo $sql;
if ($conexion->query($sql) === TRUE) {
echo "Datos guardados correctamente.";
} else {
echo "Error: " . $sql . "<br>" . $conexion->error;
}
// Cerrar la conexión
$conexion->close();
} else {
echo "<p style='color: red;'>Por favor, completa todos los campos.</p>";
}
} else {
header("Location: formulario.html");
exit();
}
?>
