#!/bin/bash
x=1
while read i
do
        y=1
        while read j
        do
                echo $i $x $j $y
                cp $x/"$x"_"$y"_2020.pdf "$i"_"$j"_2020.pdf
                y=$[$y+1]
        done < mjeseci.txt
        x=$[$x+1]
done < sandzak-gradovi.txt