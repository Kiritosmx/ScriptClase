#!/bin/bash
#Introduccion


clear
echo -e "\e[33m                        ____________                   "
echo -e  "\e[33m▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ Welcome To ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
echo -e "\e[33m▓                                                            ▓"
echo -e "\e[33m▓   ████  █       █    ███  ███   ███  ███     █    ███ ███  ▓"
echo -e "\e[33m▓  █      █      █ █   █    █    █     █  █   █ █   █    █   ▓"
echo -e "\e[33m▓  █      █     █   █  ███  ███  █     ███   █   █  ██   █   ▓"
echo -e "\e[33m▓  █      █     █████    █    █  █     █ █   █████  █    █   ▓"
echo -e "\e[33m▓   ████  ████  █   █  ███  ███   ███  █  █  █   █  █    █   ▓"
echo -e "\e[33m▓                                                            ▓"
echo -e "\e[33m▓                                                            ▓"
echo -e "\e[33m▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓_2.0_▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"`tput sgr0`
		echo  "                    │	              │"
		echo  "              	    │`tput setaf 2` Press Enter to start`tput sgr0`│"
		echo "               	    ├─────────────────┤"
		echo  "               	    │`tput setaf 1` Press space to exit `tput sgr0`│"
		echo "            	    └─────────────────┘"
echo  -e "\e[33mIntroduce la opción:\033[0m "

read n
case $n in


	E|e)

		exit
		;;
	S|s)

		./Menu
		;;

esac
