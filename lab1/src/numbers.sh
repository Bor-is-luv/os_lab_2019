#!/bin/bash
MAXCOUNT=150
count=1
while [ "$count" -le $MAXCOUNT ]
do
  number=$RANDOM
  echo $number >> numbers.txt
  let "count += 1"
done

