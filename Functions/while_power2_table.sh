#!/bin/bash -x
echo "Enter the value"

read n
high=$(( 2 ** $n ))

while [ $n -le $high ]
do
     y=$((n++))
     power=$(( 2 ** $y ))
echo $power
     if [ $power -eq 256 ]; then
break
echo "break"
fi
done
