#!/bin/bash
TIMEFORMAT=%R
rm outquick.txt outinsertion.txt
for i in {1..100}
do
    #echo "Caso $i" >> out.txt
    ./generator > in
    #echo "Quicksort time" >> out.txt
    { time ./quick < in; } 2>> outquick.txt
    #echo $'\n' >> out.txt
    #echo "Insertionsort time" >> out.txt
    { time ./insertion < in; } 2>> outinsertion.txt
    #echo $'\n' >> out.txt
done
