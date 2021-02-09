# PDF

web server:

(./server) yarn install, yarn start


tools:

ghostscript (or pdftk)
https://www.ghostscript.com/download.html


script:

./generate-pdf.sh 2022



check:

warning: LF will be replaced by CRLF in pdf/gradovi2.txt.
The file will have its original line endings in your working directory
warning: LF will be replaced by CRLF in pdf/mjeseci2.txt.
The file will have its original line endings in your working directory


sed 's/\r//g' mjeseci.txt > mjeseci2.txt
sed 's/\r//g' gradovi.txt > gradovi2.txt