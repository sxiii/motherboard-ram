#!/bin/bash

sourcefiles=(Memory-QVL-for-AMD-Ryzen-2000-Series-Processors.txt Memory-QVL.txt)
serialfile="good-serials.txt"

for x in $(cat $serialfile); do
	for y in "${sourcefiles[@]}"; do
	cat $y | grep $x >> temp.txt
	done
done

cat temp.txt | sort | uniq > on-sale.txt
rm temp.txt
