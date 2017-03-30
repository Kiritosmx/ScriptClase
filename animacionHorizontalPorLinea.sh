#!/bin/bash

if [[ -z $1 ]]; then      #Salir del bucle si $1 esta vacío
  exit
fi

UltimaLinea=`cat -n $1 | tail -1 | tr -s " " | cut -d" " -f2`
LineaActual=1
caracteresMaximo=0
lineaMostrada=0


while [[ $UltimaLinea -ne $LineaActual ]]; do
  caracteresLineaActual=`cat $1 | head -$LineaActual | tail -n+$LineaActual | wc | tr -s " " | cut -d" " -f4`
  while [[ condition ]]; do
    ref=caracteresLineaActual
    cat $1 | cut -c $caracteresLineaActual-$ref
    let caracteresLineaActual=$caracteresLineaActual+1
  done
done
