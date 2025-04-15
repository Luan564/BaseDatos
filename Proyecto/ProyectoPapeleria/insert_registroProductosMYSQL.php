<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
$codigo_barras = $_POST["codigo_barras"];
$nombre = $_POST["nombre"];
$cantidad_piezas = $_POST["cantidad_piezas"];
$precio = $_POST["precio"];

    // echo $nombre."".$email."";
    if (!empty($codigo_barras) && !empty($nombre) && !empty($cantidad_piezas) && !empty($precio)) {
        // Conectar a la base de datos
        $conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");
        // Verificar la conexión
        if ($conexion->connect_error) {
            die("Error de conexión: " . $conexion->connect_error);
        }
        // Insertar datos en la base de datos
        //echo $nombre."".$email."-----";
        $sql = "INSERT INTO productos (codigo_barras, nombre, cantidad_piezas, precio) VALUES ('$codigo_barras', '$nombre', $cantidad_piezas, $precio)";
        //echo $sql;
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
        echo "<p style='color: red;'>Por favor, completa todos los campos.</p>";
    }
}
else{
    header(header: "Location: registroProductos.html");
    exit();
}
?>
