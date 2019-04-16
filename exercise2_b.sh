#!/bin/bash
if [ $# == 2 ] #comprueba que el numero de parametros que se le pasa es 2
then #si se cumple la condicion entra en el then
tr -c [:alnum:] [\\n\*] < $1 | sort | uniq -c | sort - nr | head - $2
else # si no se cumpre la condicion imprime como se usa el comando
echo -e "Usage: ./exercise2_b.sh \e[4mNUM\e[24m \e[4mFILE\e[24m" #poniendo -e se subraya el texto si se pone entre \e[4m y \e[24m
#en el enunciado esta mal, hay que poner primero el numero y luego la ruta del archivo
fi