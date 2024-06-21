#!/bin/bash
nombre=""

echo "El genero de que nombre quiere saber"
echo "Nombre: "
read nombre

url=https://api.agify.io/?name=$nombre

respuestaApi=$(curl -s  $url)

echo $respuestaApi

edad=$(echo "$respuestaApi" | jq -r '.age')

echo "La edad probable de $nombre es  $edad"
