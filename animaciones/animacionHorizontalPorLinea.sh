#!/bin/bash

if [[ -z $1 ]]; then      #Salir del bucle si $1 esta vacío
  exit
fi

time=$2

if [[ -z $time ]]; then      #Si no pones ningún valor será 0
time=0
fi

UltimaLinea=`cat -n $1 | tail -1 | tr -s " " | cut -d" " -f2`
LineaActual=1
lineaMostrada=0
lineasYaAnimadas=0

#1º cat de la primera línea con animación
#2º mostrar la primera línea y después realizar la animación con la siguiente linea
while [[ $LineaActual -ne $UltimaLinea ]]; do
  caracteresPorLinea=`cat $1 | head -$LineaActual | tail -n+$LineaActual | wc | tr -s " " | cut -d" " -f4`
  ref=$caracteresPorLinea

    while [[ $ref -ge 1 ]]; do
      clear
      #if para mostrar las fineas superiores
      if [[ $lineasYaAnimadas -ne 0 ]]; then
        cat $1 | head -$lineasYaAnimadas
      fi

      #Este cat muestra los ultimos caracteres de la línea
      cat $1 | head -$LineaActual | tail -n+$LineaActual | cut -c $ref-$caracteresPorLinea
      let ref=$ref-1
      sleep 0.05
    done

  let lineasYaAnimadas=$lineasYaAnimadas+1
  let LineaActual=$LineaActual+1
  sleep $time
done
