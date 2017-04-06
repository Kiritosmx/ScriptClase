#!/bin/bash
lineaActual=1
UltimaLinea=`cat -n $1 | tail -1 | tr -s " " | cut -d" " -f2`

while [[ $lineaActual -ne $UltimaLinea ]]; do
  cat $1 | head -$lineaActual | tail -n+$lineaActual
  let lineaActual=$lineaActual+1
  sleep 0.2
done
