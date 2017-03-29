#!/bin/bash
#MenuTienda
clear


tiemposleep=0.2
tput setaf 4
./animacionVertical titulos/titulotienda.txt
tput sgr0
sleep $tiemposleep

function opciones {
  clear
  echo "        "
  echo ""
  echo ""
  sleep $tiemposleep
  echo -e "  _______________________________________________"
  echo -e " /                                                \"
  echo -e "|                                                  |"
  echo -e " \________________________________________________/"

}
