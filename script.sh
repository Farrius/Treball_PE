#!/bin/bash
TIMEFORMAT=%R
rm outquick.txt outinsertion.txt
for i in {1..10000}
do
    ./generator > in
    /usr/bin/time  -o outquick.txt -a -f %E ./quick < in
    /usr/bin/time  -o outinsertion.txt -a -f %E ./insertion < in
done
