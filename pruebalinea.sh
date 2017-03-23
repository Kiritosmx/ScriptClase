#!/bin/bash
#categori aleatoriamente
clear


lineas=`ls -l  | wc | tr -s " " | cut -d" " -f2`
aleatorio=$lineas
let=$lineas-1

echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
echo " `cat $lineas  "
echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"


#tambien habia pensado esto aleatorio=`ls -l  | wc | tr -s " " | cut -d" " -f2`
#o aleatorio=$lineas`ls -l  | wc | tr -s " " | cut -d" " -f2`
#pero no estoy muy seguro
