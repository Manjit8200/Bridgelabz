#!/bin/bash -x

one=1;
two=2;
three=3;
four=4;
five=5;
six=6;
seven=7;
eight=8;
nine=9;

echo "Enter value in between 0 to 9"

read a

case $a in
        $one)
        echo "The number is one"
        ;;
        $two)
        echo "The number is Two"
        ;;
                 $three)
        echo "The number is three"
        ;;
        $four)
        echo "The number is four"
        ;;
                 $five)
        echo "The number is one"
        ;;
        $six)
        echo "The number is six"
        ;;
                 $seven)
        echo "The number is seven"
        ;;
        $eight)
        echo "The number is eight"
        ;;
                 $nine)
        echo "The number is nine"
        ;;
       *)
        echo "The value is not between 0 to 9"
esac
