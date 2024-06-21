#!/bin/bash

numeroSecreto=$(( RANDOM % 100 + 1 ))
numeroElegido=-1

echo "Adivina el numero entre 0 y 100"

while [ true ] ;do
    echo "Mi eleccion es: "
    read numeroElegido

    if [ $numeroSecreto -gt $numeroElegido ]; then
	echo "El numero secreto es mayor a $numeroElegido"
            elif [ $numeroSecreto -lt $numeroElegido ]; then
		 echo "El numero secreto es menor a $numeroElegido"
                elif [ $numeroSecreto -eq $numeroElegido ]; then
		echo "Encontraste el numero oculto! "
                break
    fi
done
