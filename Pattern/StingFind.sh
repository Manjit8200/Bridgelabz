#!/bin/bash -x

read -p "enter a word ending with thing.." word

if [[ $word == +(some|any)thing ]];

then

	echo yes;

else

	echo no;

fi
