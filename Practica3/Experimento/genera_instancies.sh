#!/bin/bash

#Script per fer l'experiment automaticament
export i=0
for (( i=2 ; i <= 15 ; i=$i+1 )); do
	sh generador-instancies-ext3.sh $i $(($i/2)) $(($i/2)) instancia$i
	sleep 1
done
