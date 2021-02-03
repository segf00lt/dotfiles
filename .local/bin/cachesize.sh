#! /bin/sh

b='du .cache/ | awk //{print $1}'
sum=0
while read line 
do
	sum=$((sum + $line))
done
echo $sum
