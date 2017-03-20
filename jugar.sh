#!/bin/bash
clear

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
./animacionVertical.sh titulos/startking.txt
tput sgr0
sleep 0.5

preguntaNick

muestraTitulo
echo "Bienvenido $nick"
read


