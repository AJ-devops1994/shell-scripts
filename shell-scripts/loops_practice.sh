#!/bin/bash

#1st way
for i in {1..5}
do
	echo $i
done

#2nd way
for car in maruti audo bmw tata porche
do
	echo $car
done

#3rd way
for ((i=10; i>=1; i--))
do
	echo $i
done

#using for loop display all the txt files in current directory
for file in ./*.txt
do
	echo $file
done
