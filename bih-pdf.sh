#!/bin/bash
for i in {1..107}
do
  mkdir $i
  cd $i
  for j in `seq 12`
    do
      grad=$i
      mjesec=$j
      url='http://192.168.0.20/print.php?location='$grad'&'month=''$mjesec''
      echo $url
      wkhtmltopdf --orientation Portrait --viewport-size 1366x768 --page-size A4 $url "$grad"_"$mjesec"_2020.pdf
    done
  cd ..
done