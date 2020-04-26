#!/bin/bash -x

count=21
coin=1
#coin1=
HEADCOUNT=0
TAILCOUNT=0
while :
do

        coin=$(($RANDOM % 2))

        if [ $coin -eq 1 ]
         then
          echo "HEAD"
           HEADCOUNT=$((HEADCOUNT + 1))

          if [ $HEADCOUNT -eq 21 ]
            then
                 echo " Head is Win $HEADCOUNT "
            exit
          fi
                else
                   echo "TAIL"
         TAILCOUNT=$((TAILCOUNT + 1))

      if [ $TAILCOUNT -eq 21 ]
       then
                echo  "Tail is Win" $TAILCOUNT
         exit
      fi
fi
done

