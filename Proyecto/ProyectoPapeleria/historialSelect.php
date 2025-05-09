<?php

$conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Select a la tabla
$sql = "SELECT id_venta, fecha_venta, nombre_producto, cantidad_vendida, precio_unitario, subtotal FROM historial";
$resultado = $conexion->query($sql);

$datos = [];

if ($resultado->num_rows > 0) {
    while($fila = $resultado->fetch_assoc()) {
        $datos[] = $fila;
    }
}

$conexion->close();

// Devolver los datos como JSON
header('Content-Type: application/json');
echo json_encode($datos);
?>
