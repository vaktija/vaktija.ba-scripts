#/bin/bash
while read i
do
    "/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o "$i"_2020.pdf "$i"_Januar_2020.pdf "$i"_Februar_2020.pdf "$i"_Mart_2020.pdf "$i"_April_2020.pdf "$i"_Maj_2020.pdf "$i"_Juni_2020.pdf "$i"_Juli_2020.pdf "$i"_August_2020.pdf "$i"_Septembar_2020.pdf "$i"_Oktobar_2020.pdf "$i"_Novembar_2020.pdf "$i"_Decembar_2020.pdf
done < bih-gradovi.txt