#!/bin/bash

for var in "$@" #usamos un for para recorrer los argumentos
do
    user=$(grep $var /etc/passwd | cut -d ":" -f 1) #guardamos en user el primer campo de una linea que contenga la misma palabra que la el parametro
    if [ "$var" == "$user" ] #if iguala la variable user con el parametro
    then #si la condicion es cierta entra en el then
        grep $var /etc/passwd | #buscamos la línea que tenga el usuario y se la pasamos a cut con una pipe
        cut -d ":" -f 1,7 | #con cut nos quedamos con el primer campo y con el septimo y se lo pasamos a sed con una pipe
        sed 's/:/: /' #con sed cambiamos ":" por ": " para que tenga un espacio
    else
        echo -ERROR- $var: no such user #si la condicion es falsa procede a imprimir el error
    fi
done