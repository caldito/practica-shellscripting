#!/bin/bash

grep :$1: /etc/group | cut -d ":" -f 1  

#para este script solo es necesario buscar con grep las lineas que contengan
# ":parametro:" y pasarselo a cut con una pipe para quedarnos con el primer campo, que es el del usuario    