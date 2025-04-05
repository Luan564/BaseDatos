<?php
// Conectar a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tu_base_de_datos";  // Cambia esto al nombre de tu base de datos

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Consulta para obtener los productos
$sql = "SELECT id, nombre, descripcion FROM productos";
$result = $conn->query($sql);

// Verificar si se obtuvieron resultados
if ($result->num_rows > 0) {
    // Iniciar la tabla
    echo "<table border='1'>
            <tr>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Buscar en Google</th>
            </tr>";

    // Mostrar cada producto en una fila
    while($row = $result->fetch_assoc()) {
        $productoNombre = $row["nombre"];
        $productoDescripcion = $row["descripcion"];
        $googleSearchLink = "https://www.google.com/search?q=" . urlencode($productoNombre);

        echo "<tr>
                <td>" . $productoNombre . "</td>
                <td>" . $productoDescripcion . "</td>
                <td><a href='" . $googleSearchLink . "' target='_blank'>Buscar en Google</a></td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "0 resultados";
}

// Cerrar la conexión
$conn->close();
?>
