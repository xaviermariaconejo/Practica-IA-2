#!/bin/bash
#usage generador-instancies <n_ciutats> <n_ciutats_viatge>

# Probabilitat entre (0,100) d'assignar un vol entre dues ciutats
export m=0 #Mínim de dies per ciutat
export M=5 #Màxim de dies per ciutat

# Contadors pels noms de ciutat, hotel i vol
export ho=1
export v=1

# Paràmetres del problema
export N=$1 #Nombre de ciutats totals al problema
export C=$2 #Nombre de ciutats a complir
export D=$3 #Mínim de dies a complir
export nomproblema=$4 #Nom del problema

#El fly factor és el ratio entre N·ln(N) i (N·N-1)/2, valor que
#ens garanteix un graf connex amb alta probabilitat.
export log=$(echo "100*(($N*l($N))/($N*($N-1)/2))" | bc -l)
export fly_factor=${log:0:$(($(expr index "$log" ".")-1))}
if [ -z "$fly_factor" ] ; then 
	fly_factor=1
fi

rm -rf ./tmp
mkdir tmp

#Ciutats
for i in $(seq 1 $N); do
	#Minim entre 0 i 2 dies, màxim entre 2 i 5 dies.
	export r=$(($RANDOM%3))
	export R=$((2+$RANDOM%4))
	echo "    (ciudad-empty ciutat-$i)" >> tmp/ciutatsfile.out
	echo "    (= (dias-ciudad ciutat-$i) 0)" >> tmp/ciutatsfile.out
	echo "    (= (min-dias-ciudad ciutat-$i) $r)" >> tmp/ciutatsfile.out
	echo "    (= (max-dias-ciudad ciutat-$i) $R)" >> tmp/ciutatsfile.out
done

#Interès de les ciutats
for i in $(seq 1 $N); do
	#Interès entre 1 i 5
	export r=$((1+$RANDOM%5))
	echo "    (= (interes ciutat-$i) $r)" >> tmp/interesciutats.out
done

#Hotels
for i in $(seq 1 $N); do
	export h=$((1+$RANDOM%4))
	for j in $(seq 1 $h); do
		echo "    (es-de ciutat-$i hotel-$ho)" >> tmp/hotels.out
		export ho=$(($ho+1))
	done
done

#Preu dels hotels
for i in $(seq 1 $ho); do
	export p=$((45+$RANDOM%201))
	echo "    (= (precio-hotel hotel-$i) $p)" >> tmp/hotels.out
done 

#Vols
for i in $(seq 1 $N); do
for j in $(seq 1 $N); do
	if [ "$i" -ne "$j" ]; then
		export r=$(($RANDOM%100))	
		if [ $r -lt $fly_factor ]; then
			echo "    (va-a vol-$v ciutat-$i ciutat-$j)" >> tmp/vols.out
			export v=$(($v+1))
		fi
	fi
done
done

#Construim la instancia del problema:
rm -f $nomproblema.pddl
echo "(define (problem $nomproblema)" >> $nomproblema.pddl
echo "  (:domain viatge)" >> $nomproblema.pddl
echo "" >> $nomproblema.pddl
echo "  (:objects" >> $nomproblema.pddl
#Objectes de ciutat
echo -n "    " >> $nomproblema.pddl
for i in $(seq 1 $N); do
	echo -n "ciutat-$i " >> $nomproblema.pddl
done
echo " - ciudad" >> $nomproblema.pddl
#Objectes hotel
echo -n "    " >> $nomproblema.pddl
for i in $(seq 1 $ho); do
	echo -n "hotel-$i " >> $nomproblema.pddl
done
echo " - hotel" >> $nomproblema.pddl
#Objectes vol
echo -n "    " >> $nomproblema.pddl
for i in $(seq 1 $v); do
	echo -n "vol-$i " >> $nomproblema.pddl
done
echo " - vuelo" >> $nomproblema.pddl
echo "  )" >> $nomproblema.pddl
echo "" >> $nomproblema.pddl
echo "  (:init" >> $nomproblema.pddl
echo "    (inicial)" >> $nomproblema.pddl
echo "    (= (actual) 0)" >> $nomproblema.pddl
echo "    (= (min-dias-totales) $D)" >> $nomproblema.pddl
echo "    (= (ciudades-totales) $C)" >> $nomproblema.pddl
echo "    (= (dias-totales) 0)" >> $nomproblema.pddl
echo "    (= (interes-total) 0)" >> $nomproblema.pddl
echo "    (= (precio-total) 0)" >> $nomproblema.pddl
cat tmp/ciutatsfile.out >> $nomproblema.pddl
cat tmp/interesciutats.out >> $nomproblema.pddl
cat tmp/hotels.out >> $nomproblema.pddl
cat tmp/vols.out >> $nomproblema.pddl
echo "  )" >> $nomproblema.pddl
echo "  (:metric minimize (+ (* (interes-total) 2) (* (precio-total) 0)))" >> $nomproblema.pddl
echo "" >> $nomproblema.pddl
echo "  (:goal
  	(and (= (actual) (ciudades-totales)) (>= (dias-totales) (min-dias-totales)))" >> $nomproblema.pddl
echo "  )" >> $nomproblema.pddl
echo ")" >> $nomproblema.pddl
