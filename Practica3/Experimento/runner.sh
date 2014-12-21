#!/bin/bash

for i in $(ls | grep pddl) ; do
	echo "============"
	echo $i
	time ./ff -O -f $i -o ../Extension3.pddl > $i.output
	echo "============"
	echo ""
done
