#!/bin/bash
year="$1"
for i in {0..117}
do
  mkdir $i
  cd $i
  for j in `seq 12`
    do
      grad=$i
      mjesec=$j
      url="http://localhost:8080/$grad/$year/$mjesec"
      echo $url
      wkhtmltopdf --orientation Portrait --viewport-size 1366x768 --page-size A4 $url "$grad"_"$mjesec"_$year.pdf
    done
  cd ..
done
