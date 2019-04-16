#!/bin/bash

for ((i=$1; i<=$2; i++)); #usamos un bucle for que ponga la i al valor del primer parametro y le incremente uno hasta que sea mayor que el segundo parametro
do
    num=$(factor $i | cut -d ":" -f 2 | wc -w) #se cuenta el numero de divisores que nos devuelve factor con wc -w y se guarda en la variable num
    if [ "1" == "$num" ] #si la variable es igual a 1 significa que i es primo y se imprime i
    then
        echo $i
    fi
done

