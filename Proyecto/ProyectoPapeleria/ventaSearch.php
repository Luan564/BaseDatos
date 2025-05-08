<?php
$conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");

if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

$nombre = $_GET['nombre'] ?? '';

$stmt = $conexion->prepare("SELECT nombre, codigo_barras, precio, cantidad_piezas FROM productos WHERE nombre LIKE CONCAT('%', ?, '%') LIMIT 10");
$stmt->bind_param("s", $nombre);
$stmt->execute();
$resultado = $stmt->get_result();

$productos = [];
while ($row = $resultado->fetch_assoc()) {
    $productos[] = $row;
}

header('Content-Type: application/json');
echo json_encode($productos);
?>
