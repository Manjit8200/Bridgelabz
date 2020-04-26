#!/bin/bash -x

echo "Enter The Date and Format like that jun20 "

read -p "Enter Your Date=" check;

datecheck=`date -d"${check}" +%m%d`

start="Mar 20"
end="jun 20"

mindate=`date -d"${start}" +%m%d`
maxdate=`date -d"${end}" +%m%d`

if [ $datecheck -ge $mindate ] && [ $datecheck -le $maxdate ]

then

echo "Yes Date is in between";
else

echo "false"
fi
