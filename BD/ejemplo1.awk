{}
{   
    # printf("NR=%d, NF=%d\n",NR,NF);
    for(i=1; i < NF; i++){
        if(NF < 9){}
        else{
            if(i == 8)
                printf("\"%s\"",toupper($i));
            else{
                printf("\"%s\",",toupper($i));
            }
        }
    }
    printf("\n");
}
{}