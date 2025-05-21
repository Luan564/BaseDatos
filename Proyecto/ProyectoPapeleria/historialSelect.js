function cargarDatos(fechaInicio = '', fechaFin = '') {
    const url = new URL('historialSelect.php', window.location.href);
    if (fechaInicio) url.searchParams.append('fechaInicio', fechaInicio);
    if (fechaFin) url.searchParams.append('fechaFin', fechaFin);

    fetch(url)
        .then(response => response.json())
        .then(data => {
            const tbody = document.querySelector('#tabla_productos tbody');
            tbody.innerHTML = '';

            let total = 0;

            data.forEach(producto => {
                const fila = document.createElement('tr');
                fila.innerHTML = `
                    <td>${producto.id_venta}</td>
                    <td>${producto.fecha_venta}</td>
                    <td>${producto.nombre_producto}</td>
                    <td>${producto.cantidad_vendida}</td>
                    <td>$${producto.precio_unitario}</td>
                    <td>$${producto.subtotal}</td>
                `;
                tbody.appendChild(fila);

                // Sumar subtotal
                total += parseFloat(producto.subtotal);
            });

            // Mostrar el total en el div
            const totalDiv = document.getElementById('totalVentas');
            totalDiv.textContent = `Total vendido: $${total.toFixed(2)}`;
        })
        .catch(error => {
            console.error('Error al cargar los datos:', error);
        });
}

function filtrarPorFecha() {
    const fechaInicio = document.getElementById('fechaInicio').value;
    const fechaFin = document.getElementById('fechaFin').value;
    console.log("Filtrando desde:", fechaInicio, "hasta:", fechaFin); // <- Depuración
    cargarDatos(fechaInicio, fechaFin);
}

document.addEventListener("DOMContentLoaded", () => {
    document.getElementById('btnFiltrar').addEventListener('click', filtrarPorFecha);
    cargarDatos(); // Carga inicial
});

document.getElementById('btnLimpiar').addEventListener('click', () => {
    // Limpia los campos de fecha
    document.getElementById('fechaInicio').value = '';
    document.getElementById('fechaFin').value = '';
    
    // Vuelve a cargar todos los datos sin filtros
    cargarDatos();
});


