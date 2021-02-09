#!/bin/bash
year=$1
x=0
while read i
do
        y=1
        while read j
        do
                echo $i $x $j $y
                cp $x/"$x"_"$y"_$year.pdf "$i"_"$j"_$year.pdf
                y=$[$y+1]
        done < mjeseci2.txt
        x=$[$x+1]
done < gradovi2.txt