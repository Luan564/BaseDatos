#Forma de ejecucion: LC_NUMERIC=C awk -F',' -f insert.awk < productos.csv > insertProductos.txt

BEGIN{
    # ##Proveedores
    # printf("INSERT INTO proveedores (nombre, contacto, telefono) VALUES");

    ##Productos
    printf("INSERT INTO productos (nombre, categoria, marca, precio, stock, id_proveedor) VALUES");
}
{

    # ##Provedores
    # if(NR == 1){
    # }
    # else if(NR != 51){
    #     printf("('%s', '%s', %d),\n", $2,$3,$4);
    # }
    # else{
    #     printf("('%s', '%s', %d);", $2,$3,$4);
    # }


    ##Productos
    if(NR == 1){
    }
    else if(NR != 51){
        printf("('%s', '%s', '%s', %.2f, %d, %d),\n", $2,$3,$4, $5, $6, $7);
    }
    else{
        printf("('%s', '%s', '%s', %.2f, %d, %d);", $2,$3,$4, $5, $6, $7);
    }

}
END{
}
