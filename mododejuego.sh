#!/bin/bash

function modoclasico {


  echo "Entrando en el modo clásico"
  sleep 1


}


#########################################################################################################################
#########################</FUNCIONES>####################################################################################
#########################################################################################################################


clear
tput setaf 5
./animaciones/animacionVertical.sh titulos/modojuego.txt 
tput sgr0
sleep 0.5

./animaciones/animacionDeLineas.sh titulos/modojuegoResp.txt

read respuesta


case $respuesta in

  1)
      ./clasico.sh
      notify-send "Has elegido el Modo Clásico"
  ;;
  2)
      echo " Has elegido el uno contro uno "
      ./unocontrauno.sh
  ;;
  *)
    ./mododejuego.sh 
  ;;
esac
