#!/bin/bash


echo "hola $1"

if [[ $EUID -ne 0 ]]; then
	echo "Este script debe ser ejecutado con sudo "
	exit 1
else
	echo "Has ejecutado con sudo"
fi


