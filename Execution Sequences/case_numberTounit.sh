#!/bin/bash -x

one=1;
two=100;
three=1000;

echo "Choose the value like 1 100 1000 :"

read a

case $a in
        $one)
        echo "The number is one"
        ;;
        $two)
        echo "The number is hundard"
        ;;
        $three)
        echo "The number is thousand"
	;;
       *)
        echo "The value not valid"
	;;
esac
