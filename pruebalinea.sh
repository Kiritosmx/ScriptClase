#!/bin/bash
#categori aleatoriamente
clear

ls -l temaspreguntas | grep ^- | tr -s " " | cut -d" " -f9 | cut -d_ -f2 | cut -d. -f1 > /tmp/categorias.txt      #Muestra las categorias y las pasa a un fichero

lineas=`ls -l temaspreguntas | grep ^- | tr -s " " | cut -d" " -f9 | cut -d_ -f2 | cut -d. -f1 | wc | tr -s " " | cut -d" " -f2`

echo $((RANDOM%`echo $lineas`)) > /tmp/random
lineaRandom=`cat /tmp/random`
let lineaRandom=$lineaRandom+1

cat /tmp/categorias.txt | head -$lineaRandom | tail -n+$lineaRandom
