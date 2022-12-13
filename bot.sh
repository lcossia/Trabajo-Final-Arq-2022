#!/bin/bash

echo "Buen dia," $USER
echo "Con que te puedo ayudar?"
echo ""
echo "--- Opciones ---"
  
Opcion1="Fecha y Hora"
Opcion2="Tiempo Bahia Blanca"
Opcion3="Salir"

select opcion in "$Opcion1" "$Opcion2" "$Opcion3";

do
    if [ "$opcion" = "$Opcion3" ]; then
         echo "Que tengas un excelente dia! Nos vemos :)"
         exit

    elif [ "$opcion" = "$Opcion1" ]; then
	    date +"%d-%m-%Y %r"
	
    elif [ "$opcion" = "$Opcion2" ]; then
        curl wttr.in/Bahia_Blanca?0
    fi
done