#!/bin/bash
MAXCOUNT=149
count=0
while [ "$count" -le $MAXCOUNT ]
do
 od -A n -t d -N 1 /dev/urandom >> numbers.txt
 let "count += 1"
done
echo $count
