#!/bin/bash
clear

puntos=0

function muestraTitulo {
  clear
  tput setaf 9
  cat titulos/startking.txt
  tput sgr0
}

function preguntaNick {
  echo "¿Utilizar este nick: $nick? [y/n]"
  read yn
  case $yn in
      y)
      ;;
      n)
        muestraTitulo
        echo "Introduce tu nick:"
        read nick
      ;;
      *)
        muestraTitulo
        echo "Respuesta incorrecta utilizar y/n"
        sleep 1.4
        muestraTitulo
        preguntaNick
      ;;
  esac
}



nick=`whoami`

sleep 0.7
tput setaf 9
./animaciones/animacionVertical.sh titulos/startking.txt
tput sgr0
sleep 0.5

preguntaNick

muestraTitulo
echo "Bienvenido $nick"
sleep 2
echo "$nick" > /tmp/nick.txt




function modojuego {

  echo -e " \e[35m ┌──────────────────────────────────┐"
  echo -e "`tput sgr0`  \e[95m│ 3.Elige modo de juego           \e[33m `tput sgr0`\e[35m│ `tput sgr0`"
  echo -e " \e[35m └──────────────────────────────────┘"

case $modojuego in
  
  1)
      echo "Entrando...."
      ./mododejuego.sh
      notify-send "Has entrado en los modos de juego"
  ;;
  2)
    muestraTitulo
    echo "Introduce tu nick:"
    read nick
  ;;
  *)
    muestraTitulo
    echo "Respuesta incorrecta utilizar y/n"
    sleep 1.4
    muestraTitulo
    preguntaNick
  ;;
esac
}







#SCRIPT CATEGORIA RANDOM
ls -l temaspreguntas | grep ^- | tr -s " " | cut -d" " -f9 | cut -d_ -f2 | cut -d. -f1 > /tmp/categorias.txt      #Muestra las categorias y las pasa a un fichero

lineas=`ls -l temaspreguntas | grep ^- | tr -s " " | cut -d" " -f9 | cut -d_ -f2 | cut -d. -f1 | wc | tr -s " " | cut -d" " -f2`

echo $((RANDOM%`echo $lineas`)) > /tmp/random
lineaRandom=`cat /tmp/random`
let lineaRandom=$lineaRandom+1

categoria=`cat /tmp/categorias.txt | head -$lineaRandom | tail -n+$lineaRandom`
#FIN CATEGORIA RANDOM

clear
echo "Ha tocado $categoria"
sleep 3

sleep 1.5
clear
echo "El juego comienza en..."
sleep 0.8
./animacionVertical.sh titulos/3.txt
sleep 0.8
./animacionVertical.sh titulos/2.txt
sleep 0.8
./animacionVertical.sh titulos/1.txt
sleep 0.8
clear




./muestrapreguntas.sh $categoria
