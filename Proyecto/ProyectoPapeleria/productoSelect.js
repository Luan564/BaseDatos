// <!-- Script para el llenado de la tabla desde lo obtenido en el archivo select_TablaPriductosMYSQL.php -->

fetch('productoSelect.php')
    .then(response => response.json())
    .then(data => {
        const tbody = document.querySelector('#tabla_productos tbody');
        data.forEach(producto => {
            const fila = document.createElement('tr');
            const enlaceGoogle = `https://www.google.com/search?tbm=isch&q=${encodeURIComponent(producto.codigo_barras)}`;
            fila.innerHTML = `
                <td>${producto.id}</td>
                <td>${producto.nombre}</td>
                <td>${producto.cantidad_piezas}</td>
                <td>$${producto.precio}</td>
                <td><a href="${enlaceGoogle}" target="_blank">${producto.codigo_barras}</a></td>
                <td>
                <button class="botonEditar" dato_codigo="${producto.codigo_barras}">Editar</button>
                <button class="botonEliminar" dato_codigo="${producto.codigo_barras}">Eliminar</button>
                </td>
                `;
            tbody.appendChild(fila);
        });
        // Evento para editar algún producto
        document.querySelectorAll('.botonEditar').forEach(boton => {
            boton.addEventListener('click', function () {
                const codigo_barras = this.getAttribute('dato_codigo');
                mostrarFormularioEdicion(codigo_barras);
            });
        });

        // Evento para ELIMAR un producto
        document.querySelectorAll('.botonEliminar').forEach(boton => {
            boton.addEventListener('click', function () {
                const codigo_barras = this.getAttribute('dato_codigo');
                const nombre = this.getAttribute('dato_nombre');
                eliminarProducto(codigo_barras);
            });
        });


    })
    .catch(error => {
        console.error('Error al cargar los datos:', error);
});

// <!-- Script para realizar las busquedas en nuestra tabla -->
document.getElementById('buscador').addEventListener('keyup', function () {
    const filtro = this.value.toLowerCase();
    const filas = document.querySelectorAll('#tabla_productos tbody tr');

    filas.forEach(fila => {
        const texto = fila.cells[1].textContent.toLowerCase(); // Columna "Nombre"
        fila.style.display = texto.includes(filtro) ? '' : 'none';
    });
});


// // // // FUNCIONES // // // //

// <!-- Mostrar formulario de edición -->
function mostrarFormularioEdicion(codigo_barras) {
    const formExistente = document.querySelector('#formulario-edicion');
    if (formExistente) {
        formExistente.remove();
    }

    const nuevaFila = document.createElement('tr');
    nuevaFila.id = 'formulario-edicion';
    nuevaFila.innerHTML = `
        <td colspan="6">
        <h1>Modificar producto</h1>
        <form action="productoUpdate.php" method="POST">
            <!-- boton para que no funcione el "Enter" del lector -->
            <button type="submit" disabled hidden aria-hidden="true"></button>

            <label for="codigo_barras">Código de Barras:</label><br>
            <input type="text" id="codigo_barras" name="codigo_barras" value="${codigo_barras}" required autocomplete="off" maxlength="45"
                placeholder="Ingrese el código de barras"><br><br>

            <label for="nombre">Nombre:</label><br>
            <input type="text" id="nombre" name="nombre" autocomplete="off" maxlength="50"
                placeholder="Ingrese el nombre del producto"><br><br>

            <label for="cantidad_piezas">Cantidad de Piezas:</label><br>
            <input type="number" id="cantidad_piezas" name="cantidad_piezas" autocomplete="off" min="0" value="0"
                placeholder="Ingrese la cantidad"><br><br>

            <label for="precio">Precio ($):</label><br>
            <input type="number" id="precio" name="precio" autocomplete="off" min="0" max="99999.99" step="0.01"
                placeholder="0.00"><br><br>

            <button type="submit">Guardar</button>
            <button type="button" onclick="cerrarFormulario()">Cancelar</button>
        </form>


        </td>
    `;

    const boton = document.querySelector(`button[dato_codigo="${codigo_barras}"]`);
    const filaProducto = boton.closest('tr');
    filaProducto.parentNode.insertBefore(nuevaFila, filaProducto.nextSibling);
}

// <!-- Cerrar Formulario -->
function cerrarFormulario() {
    const formExistente = document.querySelector('#formulario-edicion');
    if (formExistente) {
        formExistente.remove();
    }
}

// <!-- Eliminar Producto -->
function eliminarProducto(codigo_barras) {
    if (confirm(`¿Estás seguro de eliminar el producto: ${codigo_barras}?`)) {
        fetch('productoDelete.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
            body: `codigo_barras=${encodeURIComponent(codigo_barras)}`
        })
        .then(response => response.text())
        .then(msg => {
            alert(msg);
            location.reload(); // Recargar la tabla después de eliminar
        })
        .catch(error => {
            console.error('Error al eliminar:', error);
        });
    }
}