
#!/bin/bash -x

x=$((RANDOM%10));
x1=$((RANDOM%10));
x2=$((RANDOM%10));
x3=$((RANDOM%10));
x4=$((RANDOM%10));


sum=$(( $x + $x1 + $x2 + $x3 + $x4 ));

echo "Sum of five random value: $sum"

average=$(($sum / 5 ))

echo "Average number of sum : $average"


