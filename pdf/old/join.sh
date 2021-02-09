#/bin/bash
#...stari nacin, bolji je nacin sa ghostscript ili pdftk (zbog "find" kroz generisani fajl)
year="$1"
while read i
do
    "/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o "yearly/$i"_$year.pdf "monthly/$i"_Januar_$year.pdf "monthly/$i"_Februar_$year.pdf "monthly/$i"_Mart_$year.pdf "monthly/$i"_April_$year.pdf "monthly/$i"_Maj_$year.pdf "monthly/$i"_Juni_$year.pdf "monthly/$i"_Juli_$year.pdf "monthly/$i"_August_$year.pdf "monthly/$i"_Septembar_$year.pdf "monthly/$i"_Oktobar_$year.pdf "monthly/$i"_Novembar_$year.pdf "monthly/$i"_Decembar_$year.pdf
done < gradovi.txt
