#!/bin/bash
clear

puntos=0

function muestraTitulo {
  clear
  tput setaf 9
  cat titulos/startking.txt
  tput sgr0
}

#funcion que hace muostrar el titulo del script

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

#Esta funcion es para el nick del jugador

nick=`whoami`

sleep 0.7
tput setaf 9
./animaciones/animacionVertical.sh titulos/startking.txt
tput sgr0
sleep 0.2

preguntaNick

#ejecuta la funcionss

muestraTitulo
echo "Bienvenido $nick"
sleep 1.5
echo "$nick" > /tmp/nick.txt

#ejecuta la funcion de muestra titulo, da la bienvenida al jugador y lo guarda en un fitxero temporal


function modojuego {
  clear
  muestraTitulo

  echo -e " \e[35m ┌──────────────────────────────────────────────┐"
  echo -e "`tput sgr 9`  \e[95m│ 1- Elige modo de juego                      \e[33m `tput sgr0`\e[35m│ `tput sgr 9`"
  echo -e "`tput bold`  \e[95m│ 2- Volver al Menu Principal                 \e[33m `tput sgr0`\e[35m│ `tput sgr0 `"
  echo -e " \e[35m └──────────────────────────────────────────────┘"


read respuesta

case $respuesta in

  1)
      ./mododejuego.sh
      notify-send "Has entrado en los modos de juego"
  ;;
  2)
      ./MenuPrinciapl.sh
  ;;
  *)
    muestraTitulo
    sleep 1
    muestraTitulo
    preguntaNick

  ;;
esac
}


#TODA ESTA FUNCION ES LA QUE DIRIGE AL SCRIPT DE MODOS DE JUEGO DONDE LO ELIGES Y EMPIEZAS A JUGAR
#TAMBIEN TE DA LA OPCION DE VOLVER AL MENU PRINCIPAL


modojuego

#EJECUTA LA FUNCION DE MODO DE JUEGO

#ESTOS SON LOS TEMAS CON SUS RESPECTIVAS PREGUNTAS

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
sleep 1.5
clear
echo "El juego comienza en..."
sleep 0.8
./animaciones/animacionVertical.sh titulos/3.txt
sleep 0.8
./animaciones/animacionVertical.sh titulos/2.txt
sleep 0.8
./animaciones/animacionVertical.sh titulos/1.txt
sleep 0.8
clear




./muestrapreguntas.sh $categoria
