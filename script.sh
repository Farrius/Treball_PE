#!/bin/bash

rm out.txt
for i in {1..100}
do
    echo "Caso $i" >> out.txt
    ./generator > in
    echo "Quicksort time" >> out.txt
    { time ./quick < in; } 2>> out.txt
    echo $'\n' >> out.txt
    echo "Insertionsort time" >> out.txt
    { time ./insertion < in; } 2>> out.txt
    echo $'\n' >> out.txt
done
