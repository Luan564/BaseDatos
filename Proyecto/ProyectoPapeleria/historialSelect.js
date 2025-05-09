// <!-- Script para el llenado de la tabla desde lo obtenido en el archivo select_TablaPriductosMYSQL.php -->

fetch('historialSelect.php')
    .then(response => response.json())
    .then(data => {
        const tbody = document.querySelector('#tabla_productos tbody');
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
        });
    })
    .catch(error => {
        console.error('Error al cargar los datos:', error);
});