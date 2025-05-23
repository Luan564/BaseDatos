let carrito = [];

function agregarAlCarrito() {
    const nombre = document.getElementById("nombre_producto").value;
    const codigo = document.getElementById("codigo_barras").value;
    const cantidad = parseInt(document.getElementById("cantidad_piezas").value);

    if (!codigo || cantidad <= 0) return alert("Código o cantidad inválidos");

    fetch(`ventaSearch.php?nombre=${nombre}`)
        .then(response => response.json())
        .then(data => {
            const producto = data.find(p => p.codigo_barras === codigo);
            if (!producto) return alert("Producto no encontrado");

            // Buscar si ya existe en el carrito
            const existente = carrito.find(p => p.codigo === codigo);
            let nuevaCantidad = cantidad;

            if (existente) {
                nuevaCantidad += existente.cantidad;
            }

            // Verificar stock
            if (nuevaCantidad > producto.cantidad_piezas) {
                return alert(`Cantidad excede existencia. Stock disponible: ${producto.cantidad_piezas}`);
            }

            if (existente) {
                // Actualizar cantidades y subtotal
                existente.cantidad = nuevaCantidad;
                existente.subtotal = existente.precio * nuevaCantidad;
            } else {
                // Agregar nuevo producto al carrito
                const subtotal = producto.precio * cantidad;
                carrito.push({
                    nombre: producto.nombre,
                    codigo: producto.codigo_barras,
                    cantidad,
                    precio: producto.precio,
                    subtotal
                });
            }

            renderizarCarrito();
            limpiarCampos();
        });
}


function renderizarCarrito() {
    const tbody = document.querySelector("#tablaCarrito tbody");
    tbody.innerHTML = "";
    let total = 0;

    carrito.forEach((item, index) => {
        total += item.subtotal;
        const row = `
            <tr>
                <td>${item.nombre}</td>
                <td>${item.codigo}</td>
                <td>${item.cantidad}</td>
                <td>$${item.precio}</td>
                <td>$${item.subtotal.toFixed(2)}</td>
                <td><button onclick="eliminarDelCarrito(${index})"><i class="fas fa-trash-alt"></i></button></td>
            </tr>
        `;
        tbody.innerHTML += row;
    });

    document.getElementById("totalGeneral").innerText = total.toFixed(2);
}

function eliminarDelCarrito(index) {
    carrito.splice(index, 1);
    renderizarCarrito();
}

function limpiarCampos() {
    document.getElementById("nombre_producto").value = "";
    document.getElementById("codigo_barras").value = "";
    document.getElementById("cantidad_piezas").value = 1;
}

function registrarVenta() {
    if (carrito.length === 0) return alert("El carrito está vacío");

    fetch("ventaInsert.php", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(carrito)
    })
    .then(res => res.text())
    .then(msg => {
        alert(msg);
        carrito = [];
        renderizarCarrito();
    });
}
