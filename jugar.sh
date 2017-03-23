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
./animacionVertical.sh titulos/startking.txt
tput sgr0
sleep 0.5

preguntaNick

muestraTitulo
echo "Bienvenido $nick"

echo "$nick" > /tmp/nick.txt

#categoria=


sleep 1.5
clear
echo ""
echo "El juego comienza en..."
sleep 0.8
./animacionVertical.sh titulos/3.txt
sleep 0.8
./animacionVertical.sh titulos/2.txt
sleep 0.8
./animacionVertical.sh titulos/1.txt
sleep 0.8
clear




./muestrapreguntas.sh
