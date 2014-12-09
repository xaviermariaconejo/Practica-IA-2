#!/bin/bash
#usage generador-instancies <n_ciutats> <n_ciutats_viatge>

# Probabilitat entre (0,100) d'assignar un vol entre dues ciutats
export fly_factor=50

# Contadors pels noms de ciutat, hotel i vol
export c=0
export h=0
export v=0

# Paràmetres del problema
export N=$1 #Nombre de ciutats totals al problema
export C=$1 #Nombre de ciutats a complir


