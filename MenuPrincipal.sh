#!/bin/bash
#Menu Principal
clear

tiemposleep=0.2

./animacionVertical.sh titulos/TheKing.txt
sleep $tiemposleep

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

echo -e " \e[35m ┌──────────────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 3.Sorteig dels Jugadors \e[33m `tput sgr0`\e[35m│ `tput sgr0`"
echo -e " \e[35m └──────────────────────────┘"

sleep $tiemposleep

echo -e " \e[35m ┌──────────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 4.Sorteig del joc \e[33m   `tput sgr0`\e[35m│ `tput sgr0`"
echo -e " \e[35m └──────────────────────┘"

sleep $tiemposleep

echo -e " \e[35m ┌─────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 5.Tienda\e[32m $ `tput sgr0` \e[35m│ `tput sgr0`"
echo -e " \e[35m └─────────────┘"
tput sgr0
echo "          "
echo ""


read n
case $n in

	1)
		./Player.sh
		echo "Entrando en el juego"
		;;
	2)
	      ./Ranking.sh
		;;
	3)
				./Sorteigjugadors.sh
		;;
	4)
			 ./mododejoc.sh
		;;

	5)
		./tenda.sh
		;;
esac
