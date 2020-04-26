#!/bin/bash -x

	echo "1. Convert Celsius temperature into Fahrenheit"
	echo "2. Convert Fahrenheit temperatures into Celsius"
	echo "Select your choice (1-2) : "

	read choice

	function myfun1() {

	echo "Enter temperature (C) : "
   read tc
   # formula Tf=(9/5)*Tc+32

	tf=$(( 2 * $tc ))
   tf1=$(( $tf + 32 ))

	echo "$tc C = $tf1 F"
}

function myfun2() {

   echo "Enter temperature (F) : "
    read tf
     # formula Tc=(5/9)*(Tf-32)
    tc=$(( $tf - 32 ))
    tc1=$(( $tc * 2 ))

    echo "$tf = $tc1"
}

	if [ $choice -eq 1 ]
	 then
	 result1="$( myfun1 )"

	elif [ $choice -eq 2 ]
	 then
     result2="$( myfun2)"

	else
        echo "Please select 1 or 2 only"

fi
