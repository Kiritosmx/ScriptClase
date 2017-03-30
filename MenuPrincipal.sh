#!/bin/bash
#Menu Principal
clear

tiemposleep=0.2
tput setaf 5
./animacionVertical.sh titulos/TheKing.txt
tput sgr0
sleep $tiemposleep

function muestratitulo {
	clear
	tput setaf 5
	cat titulos/TheKing.txt
	tput sgr0
}


function opciones {
echo "              "
echo ""
echo ""
sleep $tiemposleep
echo -e " \e[35m ┌───────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 1.Jugar\e[36m ♛`tput sgr0` `tput sgr0`\e[35m│`tput sgr0` "
echo -e " \e[35m └───────────┘"

sleep $tiemposleep

echo -e "  ┌────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 2.Ranking `tput sgr0`\e[92m`tput sgr0` \e[35m│ `tput sgr0`"
echo -e " \e[35m └────────────┘"

sleep $tiemposleep

echo -e " \e[35m ┌────────────────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 3.Modos de juego \e[33m `tput sgr0`\e[35m│ `tput sgr0`"
echo -e " \e[35m └────────────────────────────┘"

sleep $tiemposleep

echo -e " \e[35m ┌─────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 4.Tienda\e[32m $ `tput sgr0` \e[35m│ `tput sgr0`"
echo -e " \e[35m └─────────────┘"


sleep $tiemposleep

echo -e " \e[35m ┌────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 5.Salir \e[33m   `tput sgr0`\e[35m│ `tput sgr0`"
echo -e " \e[35m └────────────┘"

echo "          "
echo ""
tput sgr0

read n
case $n in

	1)
		echo "Entrando en el juego..."
		sleep 1
		./jugar.sh
	;;
	2)
		./Ranking.sh
	;;
	3)
		./Sorteigjugadors.sh
	;;

	4)
		./tenda.sh
	;;
	5)
		echo ""
		echo "  Adios"
		sleep 1
		clear
		exit
	;;
	*)
		echo "Respuesta incorrecta"
		sleep 1
		muestratitulo
		opciones
	;;
esac

}

opciones
