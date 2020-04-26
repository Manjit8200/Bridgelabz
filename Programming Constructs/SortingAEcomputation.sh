#!/bin/bash -x

   echo "equation 1 (a+b*c)"
   echo "equation 2 (a*b+c)"
   echo "equation 3 (c+a/b)"
   echo "equation 4 (a%b+c)"

   read -p "Enter a number :" a
   read -p "Enter b number :" b
   read -p "Enter c number :" c

   declare -A equation

   equation[eq1]=$(($a+$b*$c))
   equation[eq2]=$(($a*$b+$c))
   equation[eq3]=$(($c+$a/$b))
   equation[eq4]=$(($a%$b+$c))

   echo ${equation[@]}

declare -a arr

 arr=(${equation[@]})

for (( i=0; i<5; i++))
 do

    for(( j=i; j<5-i-1; j++))
    do

        if (( ${arr[j]} -gt ${arr[$j+1]} ))
        then
            # swap
            temp=${arr[$j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
 done
 echo "Array in sorted order :"
 echo ${arr[*]}

