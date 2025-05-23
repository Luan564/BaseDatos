<?php
$conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");

if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

$codigo = $_GET['codigo'] ?? '';
$nombre = $_GET['nombre'] ?? '';

if ($codigo) {
    $stmt = $conexion->prepare("SELECT nombre, codigo_barras, precio, cantidad_piezas FROM productos WHERE codigo_barras = ? LIMIT 1");
    $stmt->bind_param("s", $codigo);
} else {
    $stmt = $conexion->prepare("SELECT nombre, codigo_barras, precio, cantidad_piezas FROM productos WHERE nombre LIKE CONCAT('%', ?, '%') LIMIT 10");
    $stmt->bind_param("s", $nombre);
}

$stmt->execute();
$resultado = $stmt->get_result();

$productos = [];
while ($row = $resultado->fetch_assoc()) {
    $productos[] = $row;
}

header('Content-Type: application/json');
echo json_encode($productos);
?>