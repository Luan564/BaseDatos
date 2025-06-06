<?php

$conexion = new mysqli("localhost", "Luis", "5648", "papeleria_pao");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Select a la tabla
$sql = "SELECT id, nombre, cantidad_piezas, precio, codigo_barras FROM productos ORDER BY id DESC";
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
