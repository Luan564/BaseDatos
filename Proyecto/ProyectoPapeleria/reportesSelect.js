fetch('reporteSelect.php')
    .then(response => response.json())
    .then(data => {
        // Llenar tabla de productos más vendidos
        const tbodyMasVendidos = document.querySelector('#tabla_mas_vendidos tbody');
        tbodyMasVendidos.innerHTML = '';
        data.mas_vendidos.forEach(prod => {
            const fila = document.createElement('tr');
            fila.innerHTML = `
                <td>${prod.id}</td>
                <td>${prod.producto}</td>
                <td>${prod.total_vendido}</td>
                <td>$${parseFloat(prod.precio).toFixed(2)}</td>
            `;
            tbodyMasVendidos.appendChild(fila);
        });

        // Llenar tabla de productos con menos de 10 piezas
        const tbodyPocosProductos = document.querySelector('#tabla_pocos_productos tbody');
        tbodyPocosProductos.innerHTML = '';
        data.pocos_productos.forEach(prod => {
            const fila = document.createElement('tr');
            fila.innerHTML = `
                <td>${prod.id}</td>
                <td>${prod.codigo_barras}</td>
                <td>${prod.producto}</td>
                <td>${prod.stock_actual}</td>
            `;
            tbodyPocosProductos.appendChild(fila);
        });
    })
    .catch(error => {
        console.error('Error al cargar los reportes:', error);
    });