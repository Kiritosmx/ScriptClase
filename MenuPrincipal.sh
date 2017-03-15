#!/bin/bash
#Menu Principal
clear
tput bold
echo -e "\e[34m╔═════════════════════════╗`tput sgr0`"
echo -e "\e[34m║\e[94m      MENU PRINCIPAL `tput sgr0`\e[34m    ║"`tput sgr0`
echo -e "\e[34m╚═════════════════════════╝`tput sgr0`"
tput sgr0
echo "              "
echo -e " \e[35m ┌──────────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 1.Jugar a The King\e[36m ♛`tput sgr0` `tput sgr0`\e[35m│`tput sgr0` "
echo -e " \e[35m └──────────────────────┘"

echo -e " \e[35m ┌───────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 2.Crear Grupos\e[33m☺   `tput sgr0`\e[35m│ `tput sgr0`"
echo -e " \e[35m └───────────────────┘"
echo -e "  ┌─────────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 3.Menu de Control ½`tput sgr0`\e[35m │ `tput sgr0`"
echo -e " \e[35m └─────────────────────┘"
echo -e "  ┌───────────────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 4.Ranking `tput sgr0`\e[92m♣`tput sgr0` \e[35m│ `tput sgr0`"
echo -e " \e[35m └───────────────────────────┘"
echo -e " \e[35m ┌────────────────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 5.Usuaris Aleatoris \e[33m☻  `tput sgr0`\e[35m│ `tput sgr0`"
echo -e " \e[35m └────────────────────────┘"
echo -e " \e[35m ┌───────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 6.Batalla\e[33m ♜   `tput sgr0`\e[35m│ `tput sgr0`"
echo -e " \e[35m └───────────────┘"
echo -e " \e[35m ┌─────────────┐"
echo -e "`tput sgr0`▹ \e[95m│ 7.Tienda\e[32m $ `tput sgr0` \e[35m│ `tput sgr0`"
echo -e " \e[35m └─────────────┘"
tput sgr0
echo "          "

echo -n "Introdueix la opció: "
read n
case $n in

	1)
		./Usuarinou
		echo "usuari nou acabat"
		;;
	2)
	        ./Grupnou.sh
		;;
	3)
		echo "Introduce la contraseña de admin"
		read C

			if [ $C = papaia ]
				then
			./Control.sh


			fi


		;;
	4)
		./Esdeveniment
		;;

	5)
		./Alumne
		;;
	6)
		./Atacs.sh
		;;
	7)
		./tenda.sh
		;;
esac
