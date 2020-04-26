#!/bin/bash -x

	n1=20
	c=0
	a=0

	while [ $n2 -gt 30 ]
	do
	n2=$((a++))
	c1=$((c++))

	if [ $c1 -gt 11 ] then
		echo "Its win"
