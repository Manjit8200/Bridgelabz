#!/bin/bash -x

 FindSumZero()
{
   for (( i=0; i<(m-2); i++ ))
    do
      for (( j=(i+1); j<(m-1); j++ ))
       do
        for ((k=(j+1); k<m; k++ ))

         do

   if [ $(( ${array[$i]}+${array[$j]}+${array[$k]} )) = 0 ]
   then
      echo "FirstNumber:"${array[$i]}
      echo "SecondNumber:"${array[$j]}
      echo "ThirdNumber:"${array[$k]}
   fi
   done
  done
 done
}
array=(-4 -3 -2 -1 0 1 2 3 4)
m=${#array[@]}
FindSumZero $array $m

