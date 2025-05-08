<?php
$conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");
if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

$datos = json_decode(file_get_contents("php://input"), true);

$conexion->begin_transaction();

try {
    foreach ($datos as $producto) {
        $codigo = $producto['codigo'];
        $cantidad = $producto['cantidad'];

        // Obtener id, precio y existencia actual
        $stmt = $conexion->prepare("SELECT id, precio, cantidad_piezas FROM productos WHERE codigo_barras = ?");
        $stmt->bind_param("s", $codigo);
        $stmt->execute();
        $resultado = $stmt->get_result();
        $info = $resultado->fetch_assoc();

        if (!$info) throw new Exception("Producto no encontrado: $codigo");

        if ($cantidad > $info['cantidad_piezas']) {
            throw new Exception("Stock insuficiente para: $codigo");
        }

        $id = $info['id'];
        $precio = $info['precio'];
        $nueva_cantidad = $info['cantidad_piezas'] - $cantidad;
        $fecha = date('Y-m-d');

        // Insertar venta
        $stmt_insert = $conexion->prepare("INSERT INTO ventas (id_producto, cantidad_vendida, fecha_venta, precio_unitario) VALUES (?, ?, ?, ?)");
        $stmt_insert->bind_param("iisd", $id, $cantidad, $fecha, $precio);
        $stmt_insert->execute();

        // Actualizar inventario
        $stmt_update = $conexion->prepare("UPDATE productos SET cantidad_piezas = ? WHERE id = ?");
        $stmt_update->bind_param("ii", $nueva_cantidad, $id);
        $stmt_update->execute();
    }

    $conexion->commit();
    echo "Venta realizada correctamente.";
} catch (Exception $e) {
    $conexion->rollback();
    echo "Error: " . $e->getMessage();
}
?>
