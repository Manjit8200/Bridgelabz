#!/bin/bash -x

echo "Enter the a value"
read a
echo "Enter the b value"
read b
echo "Enter the c value"
read c

n1=$(( $a + $b * $c ))
n2=$(( $a % $b + $c ))
n3=$(( $c + $a / $b ))
n4=$(( $a * $b + $c ))

  
  if [[ $n1 > $n2 && $n1 > $n3 && $n1 > $n4 ]]; then
        echo "$n1 Formula first is maximum"
    elif [[ $n2 > $n1 && $n2 > $n3 && $n2 > $n4 ]]; then
        echo "$n2 Formula Second is maximum"
    elif [[ $n3 > $n1 && $n3 > $n2 && $n3 >$n4 ]]; then
        echo "$n3 Formula Three is maximum"
    elif [[ $n4 > $n1 && $n4 > $n2 && $n4 >$n3 ]]; then
        echo "$n4 Four Three is maximum"
fi

   if [[ $n1 < $n2 && $n1 < $n3 && $n1 < $n4 ]]; then
        echo "$n1 Formula First minimum "
    elif [[ $n2 < $n1 && $n2 < $n3 && $n2 < $n4 ]]; then
        echo "$n2 Formula Second minimum number"
    elif [[ $n3 < $n2 && $n3 < $n1 && $n3 < $n4 ]]; then
        echo "$n3 Formula Three minimum number"
	elif [[ $n4 < $n2 && $n4 < $n1 && $n4 < $n3 ]]; then
        echo "$n4 Formula Four minimum number"


fi

