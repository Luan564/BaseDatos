let columnaOrdenActual = 'fecha_venta';
let ordenAscendente = false;

function cargarDatos(fechaInicio = '', fechaFin = '', columnaOrden = 'fecha_venta', asc = false) {
    const url = new URL('historialSelect.php', window.location.href);
    if (fechaInicio) url.searchParams.append('fechaInicio', fechaInicio);
    if (fechaFin) url.searchParams.append('fechaFin', fechaFin);
    url.searchParams.append('ordenarPor', columnaOrden);
    url.searchParams.append('ascendente', asc ? '1' : '0');

    fetch(url)
        .then(response => response.json())
        .then(data => {
            const tbody = document.querySelector('#tabla_productos tbody');
            tbody.innerHTML = '';

            let total = 0;

            data.forEach(producto => {
                const fila = document.createElement('tr');
                fila.innerHTML = `
                    <td>${producto.fecha_venta}</td>
                    <td>${producto.nombre_producto}</td>
                    <td>${producto.total_vendida}</td>
                    <td>$${producto.precio_unitario}</td>
                    <td>$${producto.total_subtotal}</td>
                `;
                tbody.appendChild(fila);

                total += parseFloat(producto.total_subtotal);
            });

            document.getElementById('totalVentas').textContent = `Total vendido: $${total.toFixed(2)}`;
        })
        .catch(error => console.error('Error al cargar los datos:', error));
}

function filtrarPorFecha() {
    const fechaInicio = document.getElementById('fechaInicio').value;
    const fechaFin = document.getElementById('fechaFin').value;
    cargarDatos(fechaInicio, fechaFin, columnaOrdenActual, ordenAscendente);
}

document.addEventListener("DOMContentLoaded", () => {
    document.getElementById('btnFiltrar').addEventListener('click', filtrarPorFecha);

    document.querySelectorAll('.orden-columna').forEach(boton => {
        boton.addEventListener('click', () => {
            const columna = boton.dataset.columna;

            // Si se vuelve a hacer clic en la misma columna, se invierte el orden
            if (columnaOrdenActual === columna) {
                ordenAscendente = !ordenAscendente;
            } else {
                columnaOrdenActual = columna;
                ordenAscendente = true; // nueva columna, comenzamos ascendente
            }

            filtrarPorFecha(); // vuelve a cargar datos con orden
        });
    });

    cargarDatos(); // carga inicial
});

document.getElementById('btnLimpiar').addEventListener('click', () => {
    document.getElementById('fechaInicio').value = '';
    document.getElementById('fechaFin').value = '';
    columnaOrdenActual = 'fecha_venta';
    ordenAscendente = false;
    cargarDatos();
});
