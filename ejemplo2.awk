#Forma de ejecucion awk -F@ -f ejemplo2.awk < LibrosExamLBD-13-14.csv > tablaLibros.html
BEGIN{
    printf("<h1>Tabla de datos de Libros</h1>");
    printf("<table border=\"1\">\n");
}
{

    if(NR % 2 == 0){
        printf("<tr bgcolor=\"C2A7FF\">");
    }
    else{
        printf("<tr bgcolor=\"B9FFA8\">");
    }
    for(i=1; i < NF; i++){
        printf("<td>%s</td>",$i);
    }
    
    printf("<td><a href=\"https://google.com/search?q=%s\">%s</a> </td> </tr>\n",$2,$2);
    
}
END{
    printf("</table>");
}


