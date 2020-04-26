#!/bin/bash -x

echo "Enter 1 to use Formula Feet to inch"

echo "Enter 2 to use Formula inch to feet"

one=1;
two=2;
three=3
four=4;

echo "Choose Formulla"

read formulla

echo "Enter the value"

read f

case $formulla in

        $one)
        echo "Feet To inch"
        echo $(( $f * 12 ))
        ;;

        $two)
        echo "inch To Feet"
        echo $(( $f / 12 ))
        ;;

        $three)
        echo "Feet to Meter"
        echo $(( $f * 10 / 3 ))
        ;;
         $four)
        echo "Meter Feet"
        echo $(( $f * 3 ))
        ;;
	*)
	echo"Inavalid value"
	;;

esac
