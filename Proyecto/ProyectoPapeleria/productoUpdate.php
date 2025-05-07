<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $codigo_barras = $_POST["codigo_barras"];
    $nombre = $_POST["nombre"];
    $cantidad_piezas = $_POST["cantidad_piezas"];
    $precio = $_POST["precio"];

    // echo $nombre."".$email."";
    if (!empty($codigo_barras)) {
        // Conectar a la base de datos
        $conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");
        // Verificar la conexión
        if ($conexion->connect_error) {
            die("Error de conexión: " . $conexion->connect_error);
        }
    
        $campos = [];
        // Solo agregamos los campos que tienen datos
        if (!empty($nombre)) {
            $campos[] = "nombre = '$nombre'";
        }
        if (!empty($precio)) {
            $campos[] = "precio = $precio";
        }
        if (!empty($cantidad_piezas)) {
            $campos[] = "cantidad_piezas = $cantidad_piezas";
        }
        // Solo si hay campos para actualizar
        if (!empty($campos)) {
            // Agregamos la condición del WHERE
            $sql = "UPDATE productos SET " . implode(", ", $campos) . " WHERE codigo_barras = '$codigo_barras'";
        }

        if ($conexion->query($sql) === TRUE) {

            header("Location: ".$_SERVER['PHP_SELF']);
            exit();
        }
        else{
            echo "Error: " . $sql . "<br>" . $conexion->error;
        }
        // Cerrar la conexión
        $conexion->close();
    }
    else {
        echo "<p style='color: red;'>Por favor, indica el codigo de barras del producto a modificar.</p>";
    }
}
else{
    header(header: "Location: Productos.html");
    exit();
}
?>
