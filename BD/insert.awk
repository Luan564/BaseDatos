#Forma de ejecucion: LC_NUMERIC=C awk -F',' -f insert.awk < productos.csv > insertProductos.txt

BEGIN{
    printf("INSERT INTO productos (nombre, categoria, talla, precio, stock) VALUES");
}
{
    if(NR == 1){
    }
    else if(NR != 101){
        printf("('%s', '%s', '%s', %.2f, %d),\n", $2,$3,$4,$5+0.0,$6);
    }
    else{
        printf("('%s', '%s', '%s', %.2f, %d);", $2,$3,$4,$5+0.0,$6);
    }
}
END{
}
