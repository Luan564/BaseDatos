<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
$codigo_barras = $_POST["codigo_barras"];
$cantidad_vendida = $_POST["cantidad_piezas"];

    // echo $nombre."".$email."";
    if (!empty($codigo_barras) && $cantidad_vendida > 0) {
        // Conectar a la base de datos
        $conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");
        // Verificar la conexión
        if ($conexion->connect_error) {
            die("Error de conexión: " . $conexion->connect_error);
        }
        
        // Buscar ID y precio actual del producto
        $stmt = $conexion->prepare("SELECT id, precio, cantidad_piezas FROM productos WHERE codigo_barras = ?");
        $stmt->bind_param("s", $codigo_barras);
        $stmt->execute();
        $resultado = $stmt->get_result();

        if ($row = $resultado->fetch_assoc()) {
            $id_producto = $row['id'];
            $precio = $row['precio'];
            $cantidad_existente = $row['cantidad_piezas'];
            $fecha = date('Y-m-d'); // Fecha actual

            if ($cantidad_vendida <= $cantidad_existente) {
                // Iniciar transacción
                $conexion->begin_transaction();
        
                try {
                    // Insertar venta
                    $stmt_insert = $conexion->prepare("INSERT INTO ventas (id_producto, cantidad_vendida, fecha_venta, precio_unitario) VALUES (?, ?, ?, ?)");
                    $stmt_insert->bind_param("iisd", $id_producto, $cantidad_vendida, $fecha, $precio);
                    $stmt_insert->execute();
        
                    // Actualizar stock
                    $nueva_cantidad = $cantidad_existente - $cantidad_vendida;
                    $stmt_update = $conexion->prepare("UPDATE productos SET cantidad_piezas = ? WHERE id = ?");
                    $stmt_update->bind_param("ii", $nueva_cantidad, $id_producto);
                    $stmt_update->execute();
        
                    // Confirmar transacción
                    $conexion->commit();
                    // echo "Venta registrada correctamente.";
                } catch (Exception $e) {
                    // Si algo falla, deshacer todo
                    $conexion->rollback();
                    echo "Error en la operación: " . $e->getMessage();
                }

            } else {
                echo "Cantidad de piezas insuficientes";
            }
        } else {
            echo "Producto no encontrado.";
        }

    }
    else {
        echo "<p style='color: red;'>Por favor, completa todos los campos.</p>";
    }
}
else{
    header(header: "Location: Inicio.html");
    exit();
}
?>
