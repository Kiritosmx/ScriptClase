#!/bin/bash
#MenuTienda
function opciones {

  sleep $tiemposleep
  echo -e " ╔═══════════╗"
  echo -e " │1.Comprar "Vida"`tput sgr0`|"
  echo -e " ╚═══════════╝"

  sleep $tiemposleep
  echo -e " ╔══╗" ╔═══════════╗
  echo -e " │2.│ │Comprar "XP"`tput sgr0` │"
  echo -e " ╚══╝" ╚═══════════╝

 sleep $tiemposleep
 echo -e " ╔══╗" ╔═══════════╗
 echo -e " │3.│ │Comprar "XP"`tput sgr0` │"
 echo -e " ╚══╝" ╚═══════════╝

}


clear


tiemposleep=0.2
tput setaf 8
./animaciones/animacionVertical.sh ./titulos/titulotienda.txt
tput sgr0
sleep $tiemposleep

opciones
