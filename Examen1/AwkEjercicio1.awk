BEGIN{
}
{

    ##### Inciso c)
    # if($4 == "Muebles"){
    #     printf("%d, %s, %s, %s %.2f, %s, %s\n", $1, $2, $3, $4, $5, $6, $7);
    # }

    #### Inciso b)
    if(NR == 1){
    }
    else{
        printf("%d, %s, %s %.2f, %s, %s, %s\n", $1, $3, $4, $5, $6, $2, $7);
    }
}
END{
}