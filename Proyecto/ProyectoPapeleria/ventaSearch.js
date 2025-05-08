document.getElementById("nombre_producto").addEventListener("input", function () {
    const nombre = this.value;

    if (nombre.length >= 2) {
        fetch('ventaSearch.php?nombre=' + encodeURIComponent(nombre))
            .then(response => response.json())
            .then(data => {
                const sugerencias = document.getElementById("sugerencias");
                sugerencias.innerHTML = "";
                sugerencias.style.display = "block";

                data.forEach(producto => {
                    const item = document.createElement("li");
                    item.innerHTML = `
                        <strong>${producto.nombre}</strong><br>
                        Precio: $${producto.precio} <br>
                        Piezas disponibles: ${producto.cantidad_piezas}
                    `;
                    item.style.padding = "10px";
                    item.style.cursor = "pointer";
                    item.style.borderBottom = "1px solid #ddd";
                
                    item.addEventListener("click", function () {
                        document.getElementById("nombre_producto").value = producto.nombre;
                        document.getElementById("codigo_barras").value = producto.codigo_barras;
                        sugerencias.style.display = "none";
                    });
                
                    sugerencias.appendChild(item);
                });
            });
    } else {
        document.getElementById("sugerencias").style.display = "none";
    }
});

