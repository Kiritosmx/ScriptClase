#!/bin/bash
loop=0
UltimaLinea=`cat -n $1 | tail -1 | tr -s " " | cut -d" " -f2`

while [[ $loop -lt $UltimaLinea ]]; do
  cat $1 | tail -$loop
  sleep 0.1
  clear
  let loop=$loop+1
done
cat $1
