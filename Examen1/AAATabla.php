<?php
$conexion = new mysqli("localhost", "Luis", "5648", "ventas");
// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

$sql = "SELECT id_producto, nombre, categoria FROM productos";
$result = $conexion->query($sql);  // Usar $conexion en lugar de $conn
// Verificar si se obtuvieron resultados
if ($result->num_rows > 0) {
    // Iniciar la tabla
    echo "<table border='1'>
            <tr>
                <th>Nombre</th>
                <th>Categoría</th>
                <th>Buscar en Google</th>
            </tr>";

    // Mostrar cada producto en una fila
    while($row = $result->fetch_assoc()) {
        $productoNombre = $row["nombre"];
        $productoCategoria = $row["categoria"];
        $googleSearchLink = "https://www.google.com/search?q=" . urlencode($productoNombre);

        echo "<tr>
                <td>" . $productoNombre . "</td>
                <td>" . $productoCategoria . "</td>
                <td><a href='" . $googleSearchLink . "' target='_blank'>Buscar en Google</a></td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "0 resultados";
}

// Cerrar la conexión
$conexion->close();  // Usar $conexion en lugar de $conn
?>
