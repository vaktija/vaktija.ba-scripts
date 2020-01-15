#!/bin/bash
for i in `seq 11`
do
  mkdir $i
  cd $i
  for j in `seq 12`
    do
      grad=$i
      grad1000=$(($grad * 1000))
      mjesec=$j
      url='http://192.168.0.20/print.php?location='$grad1000'&'month=''$mjesec''
      echo $url
      wkhtmltopdf --orientation Portrait --viewport-size 1366x768 --page-size A4 $url "$grad"_"$mjesec"_2020.pdf
    done
  cd ..
done