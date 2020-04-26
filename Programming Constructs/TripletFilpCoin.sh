#!/bin/bash -x

function myfun() {
count=1
coin1=1
coin2=1
coin3=1

HHH=0
TTT=0

HHT=0
THH=0

HTH=0
THT=0

HTT=0
TTH=0

for (( count=0;count<21;count++))
do

      coin1=$(($RANDOM % 2))
      coin2=$(($RANDOM % 2))
                coin3=$(($RANDOM % 2))

    if [[ $coin1 -eq 1 && $coin2 -eq 1 && $coin3 -eq 1 ]]; then
       HHH=$((HHH + 1))

   elif [[ $coin1 -eq 0 && $coin2 -eq 0 && $coin3 -eq 0 ]]; then
         TTT=$((TTT + 1))

   elif [[ $coin1 -eq 1 && $coin2 -eq 1 && $coin3 -eq 0 ]]; then
         HHT=$((HHT + 1))

   elif [[ $coin1 -eq 0 && $coin2 -eq 1 && $coin3 -eq 1 ]]; then
         THH=$((THH + 1))

   elif [[ $coin1 -eq 1 && $coin2 -eq 0 && $coin3 -eq 1 ]]; then
         HTH=$((HTH + 1))

   elif [[ $coin1 -eq 0 && $coin2 -eq 1 && $coin3 -eq 0 ]]; then
         THT=$((THT + 1))

   elif [[ $coin1 -eq 1 && $coin2 -eq 0 && $coin3 -eq 0 ]]; then
         HTT=$((HTT + 1))
   elif [[ $coin1 -eq 0 && $coin2 -eq 0 && $coin3 -eq 1 ]]; then
         TTH=$((TTH + 1))

fi
done
echo "HEAD HEAD HEAD IS :"$HHH
echo "HEAD TAIL TAIL IS :"$TTT
echo "HEAD HEAD TAIL IS :"$HHT
echo "TAIL HEAD HEAD IS :"$THH

echo "HEAD TAIL HEAD IS :"$HTH
echo "TAIL HEAD TAIL IS :"$THT
echo "HEAD TAIL TAIL IS :"$HTT
echo "TAIL TAIL HEAD IS :"$TTH
}

function myfun2() {

count=1
coin1=1
coin2=1
HH=0
TT=0
HT=0
TH=0

for (( count=0;count<21;count++))
do

        coin1=$(($RANDOM % 2))
        coin2=$(($RANDOM % 2))

        if [[ $coin1 -eq 1 && $coin2 -eq 1 ]]
         then
           HH=$((HH + 1))

          if [ $HH -eq 21 ]
            then
                 echo " HH is Win $HH "
            exit
          fi

    elif [[ $coin1 -eq 0 && $coin2 -eq 0 ]]
   then
         TT=$((TT + 1))

      if [ $TT -eq 21 ]
       then
                echo  "TT is Win" $TT
         exit
      fi

 elif [[ $coin1 -eq 1 && $coin2 -eq 0 ]]
   then
         TH=$((TH + 1))

      if [ $TH -eq 21 ]
       then
                echo  "TH is Win" $TH
         exit
      fi

 elif [[ $coin1 -eq 0 && $coin2 -eq 1 ]]
   then
         HT=$((HT + 1))

      if [ $HT -eq 21 ]
       then
                echo  "HT is Win" $HT
         exit
      fi

else

   echo "Else Part is Working"
fi
done

echo "HEAD HEAD IS :"$HH
echo "HEAD TAIL IS :"$HT
echo "TAIL TAIL IS :"$TT
echo "TAIL HEAD IS :"$TH

}

result="$( myfun )"
result1="$( myfun2 )"
