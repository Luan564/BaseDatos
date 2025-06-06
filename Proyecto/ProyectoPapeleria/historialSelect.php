<?php
$conexion = new mysqli("localhost", "Luis", "5648", "papeleria_pao");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$fechaInicio = isset($_GET['fechaInicio']) ? $_GET['fechaInicio'] : '';
$fechaFin = isset($_GET['fechaFin']) ? $_GET['fechaFin'] : '';

$ordenarPor = $_GET['ordenarPor'] ?? 'fecha_venta';
$ascendente = $_GET['ascendente'] ?? '0';
$orden = $ascendente == '1' ? 'ASC' : 'DESC';

// Evita inyección: solo permite columnas válidas
$columnasValidas = ['fecha_venta', 'nombre_producto', 'precio_unitario', 'total_vendida', 'total_subtotal'];
if (!in_array($ordenarPor, $columnasValidas)) {
    $ordenarPor = 'fecha_venta';
}


// $sql = "SELECT id_venta, fecha_venta, nombre_producto, cantidad_vendida, precio_unitario, subtotal FROM historial WHERE 1=1 ORDER BY id_venta DESC";

if (empty($fechaInicio) && empty($fechaFin)) {
    // Si no se pasó ninguna fecha, obtener la fecha más reciente
    $sql = "SELECT id_venta, fecha_venta, nombre_producto, cantidad_vendida AS total_vendida, precio_unitario, subtotal AS total_subtotal FROM historial ORDER BY $ordenarPor $orden";
} else {
    // Si se seleccionó al menos una fecha
    $sql = "SELECT fecha_venta, nombre_producto, precio_unitario, 
                   SUM(cantidad_vendida) AS total_vendida, 
                   SUM(subtotal) AS total_subtotal
            FROM historial
            WHERE 1=1";

    if (!empty($fechaInicio)) {
        $sql .= " AND fecha_venta >= '$fechaInicio'";
    }
    if (!empty($fechaFin)) {
        $sql .= " AND fecha_venta <= '$fechaFin'";
    }

    $sql .= " GROUP BY fecha_venta, nombre_producto, precio_unitario
              ORDER BY $ordenarPor $orden";
}

// $sql .= " GROUP BY nombre_producto, precio_unitario ORDER BY total_vendida DESC";

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
