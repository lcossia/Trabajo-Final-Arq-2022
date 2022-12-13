 #!/bin/bash

echo "Intenta adivinar un numero entre el 1 y el 50, tenes 10 oportunidades"

aleatorio=$(($RANDOM%50+1))
numero=0
contador=0
echo "El numero aleatorios es:" $aleatorio
     while [ $aleatorio -ne $numero ]
     do
            let contador=contador+1
            read -p "¿Cual es el numero? 1-50: " numero
            echo "Numero de intentos" $contador "de 10"
            if [ $aleatorio -lt $numero ]; then
                  echo "El numero es menor a:" $numero
            elif [ $aleatorio -gt $numero ]; then
                  echo "El numero es mayor a: "$numero
            fi
	      if [ $contador -eq "10" ]; then
                  echo "Perdiste, no te quedan oportunidades :("
                  exit
	      fi
      done
	if [ $contador -le "5" ]; then
	      echo "Felicidades Campeon!!! Lo lograste en menos de 5 oportunidades."
	elif [ $contador -lt "10" ]; then
	      echo "No estuvo mal! Lo lograste en" $contador "veces."
	fi
      echo "El numero es:" $aleatorio

