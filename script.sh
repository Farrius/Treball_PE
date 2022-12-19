#!/bin/bash
TIMEFORMAT=%R
rm xfile.txt outquick.txt outinsertion.txt
for i in {1..10000}
do
    ./generator > in
    /usr/bin/time  -o outquick.txt -a -f %U ./quick < in
    /usr/bin/time  -o outinsertion.txt -a -f %U ./insertion < in
done
