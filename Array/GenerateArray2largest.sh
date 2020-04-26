#!/bin/bash -x
MAXCOUNT=5
count=1
while [ "$count" -le $MAXCOUNT ]; do
 array[$count]=$((RANDOM%100))
 let "count += 1"
done

echo "${array[*]}"



if [ "${#array[@]}" -lt 2 ]
then
  echo Incoming array is not large enough >&2
  exit 1
fi

largest=${array[0]}
secondLargest='unset'

for((i=1; i < ${#array[@]}; i++))
do
  if [[ ${array[i]} > $largest ]]
  then
    secondLargest=$largest
    largest=${array[i]}

  elif (( ${array[i]} != $largest )) && { [[ "$secondLargest" = "unset" ]] || [[ ${array[i]} > $secondLargest ]]; }
  then
    secondLargest=${array[i]}
  fi
done

echo "secondLargest = $secondLargest"
