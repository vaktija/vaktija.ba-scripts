#!/bin/bash
# ./generate-pdf.sh 2021
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

x=0
while read i
do
        y=1
        while read j
        do
                echo $i $x $j $y
                cp $x/"$x"_"$y"_$year.pdf monthly/"$i"_"$j"_$year.pdf
                y=$[$y+1]
        done < mjeseci2.txt
        x=$[$x+1]
done < gradovi2.txt

while read i
do
    #pdftk "monthly/$i"_Januar_$year.pdf "monthly/$i"_Februar_$year.pdf "monthly/$i"_Mart_$year.pdf "monthly/$i"_April_$year.pdf "monthly/$i"_Maj_$year.pdf "monthly/$i"_Juni_$year.pdf "monthly/$i"_Juli_$year.pdf "monthly/$i"_August_$year.pdf "monthly/$i"_Septembar_$year.pdf "monthly/$i"_Oktobar_$year.pdf "monthly/$i"_Novembar_$year.pdf "monthly/$i"_Decembar_$year.pdf cat output "yearly/$i"_$year.pdf 
    gswin64c -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="yearly/$i"_$year.pdf "monthly/$i"_Januar_$year.pdf "monthly/$i"_Februar_$year.pdf "monthly/$i"_Mart_$year.pdf "monthly/$i"_April_$year.pdf "monthly/$i"_Maj_$year.pdf "monthly/$i"_Juni_$year.pdf "monthly/$i"_Juli_$year.pdf "monthly/$i"_August_$year.pdf "monthly/$i"_Septembar_$year.pdf "monthly/$i"_Oktobar_$year.pdf "monthly/$i"_Novembar_$year.pdf "monthly/$i"_Decembar_$year.pdf
done < gradovi2.txt


#cleanup

for i in {0..117}
do
  rm -rf $i
done

rm -rf monthly/*.pdf