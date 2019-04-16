#!/bin/bash

find $1 -name '*.jpg' -size +1M -print -exec mogrify -resize 720x {} +
#usamos find para buscar los archivos que cumplan las caracteristicas que queremos
#con el flag -name decimos que queremos archivos jpg
#con el flag -size decimos que queremos archivos mas de 1MiB
#con el flag -print imprimimos todos los archivos que encuentre que cumplan esas caracteristicas
#con el flag -exec podemos hacer que ejecute el comando mogrify por cada foto 
#con el flag -resize 720x se le dice que queremos la foto con anchura de 720 pixeles y la altura proporcional
# {} sirve para pasarle lo que encuentra find al comando que hemos puesto en la flag exec
# + sirve para pasarle todas las fotos a la vez para que mogrify haga una sola ejecucion en lugar de una por cada foto
