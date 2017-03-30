#!/bin/bash
inicio=`date | cut -d" " -f4`
read
fin=`date | cut -d" " -f4`

hinicio=`echo $inicio | cut -d: -f1`
minicio=`echo $inicio | cut -d: -f2`
sinicio=`echo $inicio | cut -d: -f3`

let hinicio=$hinicio*3600
let minicio=$minicio*60
let sinicio=$sinicio+$minicio+$hinicio
#Segundos del primer valor


hfin=`echo $fin | cut -d: -f1`
mfin=`echo $fin | cut -d: -f2`
sfin=`echo $fin | cut -d: -f3`

let hfin=$hfin*3600
let mfin=$mfin*60
let sfin=$sfin+$mfin+$hfin
#Segundos del segundo valor
let segtrans=$sfin-$sinicio
echo "Han pasado $segtrans''"
