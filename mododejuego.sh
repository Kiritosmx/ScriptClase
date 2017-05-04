#!/bin/bash

function modoclasico {


  echo "Entrando en el modo clásico"
  sleep 1


}


function muestraTitulo {
  cat titulos/modojuego.txt

  notify-send "MODOS DE JUEGO"
}

function respuesta {
  read respuesta


  case $respuesta in

    1)
  	 notify-send "Has elegido el Modo Clásico"
        ./clasico.sh

    ;;
    2)
        echo " Has elegido el uno contro uno "
        ./unocontrauno.sh
    ;;
    *)
    echo "Error"
    sleep 0.4
      clear
      tput setaf 5
      muestraTitulo
      cat titulos/modojuegoResp.txt
      tput sgr0
      respuesta
    ;;
  esac
}

#SI NO PONES O UN 1 O UN 2 SALE QUE ES ERROR Y LO GUARDA EN UN FITXERO

#########################################################################################################################
#########################</FUNCIONES>####################################################################################
#########################################################################################################################


clear
tput setaf 5
./animaciones/animacionVertical.sh titulos/modojuego.txt
sleep 0.5

./animaciones/animacionDeLineas.sh titulos/modojuegoResp.txt
tput sgr0

respuesta


#FUNCION DONDE TIENE QUE ELEGIR EL MODO DE JUEGO QUE QUIERAS Y EMPEZAR A JUGAR
