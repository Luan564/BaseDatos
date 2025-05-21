<?php
$conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$fechaInicio = isset($_GET['fechaInicio']) ? $_GET['fechaInicio'] : '';
$fechaFin = isset($_GET['fechaFin']) ? $_GET['fechaFin'] : '';

$sql = "SELECT id_venta, fecha_venta, nombre_producto, cantidad_vendida, precio_unitario, subtotal FROM historial WHERE 1=1";

if (!empty($fechaInicio)) {
    $sql .= " AND fecha_venta >= '$fechaInicio'";
}
if (!empty($fechaFin)) {
    $sql .= " AND fecha_venta <= '$fechaFin'";
}

$resultado = $conexion->query($sql);

$datos = [];

if ($resultado && $resultado->num_rows > 0) {
    while($fila = $resultado->fetch_assoc()) {
        $datos[] = $fila;
    }
}

$conexion->close();

header('Content-Type: application/json');
echo json_encode($datos);
?>
