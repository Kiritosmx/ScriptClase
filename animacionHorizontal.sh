#!/bin/bash

if [[ -z $1 ]]; then      #Salir del bucle si $1 esta vacío
  exit
fi

UltimaLinea=`cat -n $1 | tail -1 | tr -s " " | cut -d" " -f2`
LineaActual=1
caracteresMaximo=0

#Un bucle que salga cuando la variable de referencia sea igual a UltimaLinea
  #El bucle contrará los caracteres de cada línea

#Este bucle cuenta los caracteres por linea y se guarda el máximo en la variable
while [[ $UltimaLinea -ne $LineaActual ]]; do
  caracteresLineaActual=`cat $1 | head -$LineaActual | tail -n+$LineaActual | wc | tr -s " " | cut -d" " -f4`
  if [[ $caracteresLineaActual -gt $caracteresMaximo ]]; then
    caracteresMaximo=$caracteresLineaActual
  fi
  let LineaActual=$LineaActual+1
done

ref=$caracteresMaximo

#Este bucle muestra desde los últimos caracteres a los primeros
while [[ $caracteresMaximo -ne 0 ]]; do
  clear
  cat $1 | cut -c $caracteresMaximo-$ref
  sleep 0.08
  let caracteresMaximo=$caracteresMaximo-1
done
