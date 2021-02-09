#/bin/bash
year="$1"
while read i
do
    #pdftk "monthly/$i"_Januar_$year.pdf "monthly/$i"_Februar_$year.pdf "monthly/$i"_Mart_$year.pdf "monthly/$i"_April_$year.pdf "monthly/$i"_Maj_$year.pdf "monthly/$i"_Juni_$year.pdf "monthly/$i"_Juli_$year.pdf "monthly/$i"_August_$year.pdf "monthly/$i"_Septembar_$year.pdf "monthly/$i"_Oktobar_$year.pdf "monthly/$i"_Novembar_$year.pdf "monthly/$i"_Decembar_$year.pdf cat output "yearly/$i"_$year.pdf 
    gswin64c -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile="yearly/$i"_$year.pdf "monthly/$i"_Januar_$year.pdf "monthly/$i"_Februar_$year.pdf "monthly/$i"_Mart_$year.pdf "monthly/$i"_April_$year.pdf "monthly/$i"_Maj_$year.pdf "monthly/$i"_Juni_$year.pdf "monthly/$i"_Juli_$year.pdf "monthly/$i"_August_$year.pdf "monthly/$i"_Septembar_$year.pdf "monthly/$i"_Oktobar_$year.pdf "monthly/$i"_Novembar_$year.pdf "monthly/$i"_Decembar_$year.pdf
done < gradovi.txt
