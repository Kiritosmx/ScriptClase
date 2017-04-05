#!/bin/bash
clear
/animaciones/animacionVertical.sh titulos/modojuego.txt
sleep 2

0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o
0  1-Modo Clásico                      0
0  2-One VS One                        0
0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o0o

function modoclasico{

  echo -e " \e[35m "
  echo -e "`tput sgr0`  \e[95m│ Modo clásico          \e[33m `tput sgr0`\e[35m│ `tput sgr0`"
  echo -e " \e[35m "

case $modoclasico in

  1)

      ./clasico.sh
      notify-send "Has elegido el Modo Clásico"
  ;;
  2)
      echo " volver al Menu anterior "
      jugar.sh
  ;;
  *)
    exit

  ;;
esac
}
