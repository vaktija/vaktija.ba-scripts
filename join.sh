#/bin/bash
while read i
do
    "/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o "yearly/$i"_2020.pdf "monthly/$i"_Januar_2020.pdf "monthly/$i"_Februar_2020.pdf "monthly/$i"_Mart_2020.pdf "monthly/$i"_April_2020.pdf "monthly/$i"_Maj_2020.pdf "monthly/$i"_Juni_2020.pdf "monthly/$i"_Juli_2020.pdf "monthly/$i"_August_2020.pdf "monthly/$i"_Septembar_2020.pdf "monthly/$i"_Oktobar_2020.pdf "monthly/$i"_Novembar_2020.pdf "monthly/$i"_Decembar_2020.pdf
done < gradovi.txt
