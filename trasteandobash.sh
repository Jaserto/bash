#!/bin/bash

 #Author kalium


#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"



export DEBIAN_FRONTEND=noninteractive


trap ctrl_c INT

function ctrl_c(){
	echo -e "\n${yellowColour}[*]${endColour}${grayColour}Saliendo${endColour}"
		exit 0
}


function helpPanel(){
	echo -e "\n${yellowColour}[*]${endColour}${grayColour} Uso: ./trasteandosh.sh${endColour}"
	echo -e "\n\t${purpleColour}a)${endColour}${yellowColour} Imprime Hola${endColour}"
	echo -e "\t\t${redColour}Hola${endColour}"
	echo -e "\t\t${redColour}Caracola ${endColour}"
	echo -e "\t${purpleColour}n)${endColour}${yellowColour} Imprime Adios${endColour}"
	echo -e "\t${purpleColour}h)${endColour}${yellowColour} Mostrar este panel de ayuda${endColour}\n"
	exit 0
}


function  darBienvenida(){
	if [ "$(echo $bienvenido)" == "Hola"]; then

	echo "Bienvenido, pero que te encuentres bien"
		fi

}


#Funcion principal


if [[ $EUID -ne 0 ]]; then
	echo "ejecuta como administrador"
else
	declare -i parameter_counter=0; while getopts ":a:n:h:" arg; do
		case $arg in
			a) bienvenido=$OPTARG; let parameter_counter+=1 ;;
			n) adios=$OPTARG; let parameter_counter+=1 ;;
			h) helpPanel;;
		esac
	done

	if [ $parameter_counter -ne 2 ]; then
		helpPanel
	else
		echo "Hola"
	 	darBienvenida
	
	fi
	
fi


