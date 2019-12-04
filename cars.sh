#!/bin/bash
#cars.sh
#Stephanie Munday

i=0
while [ $i -eq 0 ]
do
	echo "Type 1 to enter a new car."
	echo "Type 2 to display the list of cars."
	echo "Type 3 to quit and exit the program."; read -r car
	case $car in
		1)
	       		echo "Enter the year of the car."; read -r  year
			echo "Enter the make of the car."; read -r make
			echo "Enter the model of the car."; read -r model
			echo "$year:$make:$model" >> My_old_cars  ;;
		2)
	       		sort My_old_cars ;;
		3)
	       		echo "Goodbye."
			i=1
	esac
done
