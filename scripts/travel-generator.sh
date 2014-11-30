#!/bin/bash
#The MIT License (MIT)
#
#Copyright (c) 2014 Josep Sánchez Ferreres
#
#Permission is hereby granted, free of charge, to any person obtaining a copy
#of this software and associated documentation files (the "Software"), to deal
#in the Software without restriction, including without limitation the rights
#to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#copies of the Software, and to permit persons to whom the Software is
#furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in
#all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
#THE SOFTWARE.

#First we filter the input instances

export inputfile=$1
export outputfile=$2


echo "" > filteredinstances.out
for i in $(cat $inputfile | grep -E "of"); do 
	export value=$(echo $i | grep "\[")
	if [ ! -z "$value" ] ; then
		echo $(expr substr $value 2 $((${#value} - 1))) >> filteredinstances.out
	fi
done

export travelcount=0
echo "" > $outputfile
for i in $(cat filteredinstances.out); do
	for j in $(cat filteredinstances.out); do
		#print a simple travel for each pair of cities, this should
		#should work for now
		if [ "$i" != "$j" ] ; then
			echo "([viatge-$travelcount] of  Viatge
	(desti $i)
	(origen $j)
	(preu-viatge 65)
	(transport avio))
" >> $outputfile
		export travelcount=$(($travelcount + 1))
		fi
	done
done
