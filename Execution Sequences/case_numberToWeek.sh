#!/bin/bash -x

one=1;two=2;
three=3;four=4;
five=5;
six=6;
seven=7;

echo "Enter value in between 1 to 7"

read a

case $a in
        $one)
        echo "Sunday"
        ;;
        $two)
        echo "Monday"
        ;;
		 $three)
        echo "Tuesday"
        ;;
        $four)
        echo "Wednesday"
        ;;
		 $five)
        echo "Thursday"
        ;;
        $six)
        echo "friday"
        ;;
		 $seven)
        echo "Saturday"
        ;;
        $eight)
        echo "The number is eight"
        ;;
		 $nine)
        echo "The number is nine"
        ;;
        *)
        echo "The value is not between 1 to 7"
esac
