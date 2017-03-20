#!/bin/bash
loop=0

if [[ -z $1 ]]; then      #Salir del bucle si $1 esta vacío
  exit
fi

UltimaLinea=`cat -n $1 | tail -1 | tr -s " " | cut -d" " -f2`

while [[ $loop -lt $UltimaLinea ]]; do
  cat $1 | tail -$loop
  sleep 0.1
  clear
  let loop=$loop+1
done
cat $1
