<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $codigo = $_POST["codigo_barras"];

    // echo $codigo;
    if (!empty($codigo)) {
        // Conectar a la base de datos
        $conexion = new mysqli("localhost", "Luis", "5648", "productoprueba");
        // Verificar la conexión
        if ($conexion->connect_error) {
            die("Error de conexión: " . $conexion->connect_error);
        }

        $sql = "DELETE FROM productos WHERE codigo_barras = '$codigo'";

        if ($conexion->query($sql) === TRUE) {
            echo "El producto fue eliminado correctamente :))";
            exit();
        }
        else{
            echo "Error: " . $sql . "<br>" . $conexion->error;
        }
        // Cerrar la conexión
        $conexion->close();
    }
    else {
        echo "Error no se pudo eliminar el producto";
    }
}
else{
    header(header: "Location: registroProductos.html");
    exit();
}
?>