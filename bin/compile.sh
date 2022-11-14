#!/bin/bash

cd $(dirname $(readlink -f $0))
cd ..

pdflatex -file-line-error -shell-escape -interaction=nonstopmode -synctex=1 -output-format=pdf main.tex
biber main
pdflatex -file-line-error -shell-escape -interaction=nonstopmode -synctex=1 -output-format=pdf main.tex
pdflatex -file-line-error -shell-escape -interaction=nonstopmode -synctex=1 -output-format=pdf main.tex
rm main.aux
rm main.bcf
rm main.lof
rm main.log
rm main.lot
rm main.out
rm main.run.xml
rm main.synctex.gz
rm main.toc
rm sections/*.aux
say "latex compiled"
exit
