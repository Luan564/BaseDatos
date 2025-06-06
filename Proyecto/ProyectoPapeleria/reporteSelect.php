<?php

$conexion = new mysqli("localhost", "Luis", "5648", "papeleria_pao");

if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Productos más vendidos (sumar cantidad vendida por producto)
$sql_mas_vendidos = "
    SELECT 
    p.id,
    p.nombre AS producto,
    p.precio,
    SUM(h.cantidad_vendida) AS total_vendido,
    COUNT(DISTINCT h.id_venta) AS veces_vendido
FROM 
    productos p
JOIN 
    historial h ON p.nombre = h.nombre_producto
GROUP BY 
    p.id, p.nombre, p.precio
ORDER BY 
    total_vendido DESC
LIMIT 5;
";

// Productos con menos de 10 piezas en inventario
$sql_pocos_productos = "
    SELECT id, codigo_barras, nombre AS producto, cantidad_piezas AS stock_actual FROM  productos WHERE cantidad_piezas <= 10 ORDER BY cantidad_piezas ASC;
";

$res_mas_vendidos = $conexion->query($sql_mas_vendidos);
$res_pocos_productos = $conexion->query($sql_pocos_productos);

$mas_vendidos = [];
$pocos_productos = [];

if ($res_mas_vendidos && $res_mas_vendidos->num_rows > 0) {
    while($fila = $res_mas_vendidos->fetch_assoc()) {
        $mas_vendidos[] = $fila;
    }
}

if ($res_pocos_productos && $res_pocos_productos->num_rows > 0) {
    while($fila = $res_pocos_productos->fetch_assoc()) {
        $pocos_productos[] = $fila;
    }
}

$conexion->close();

header('Content-Type: application/json');
echo json_encode([
    "mas_vendidos" => $mas_vendidos,
    "pocos_productos" => $pocos_productos
]);
?>