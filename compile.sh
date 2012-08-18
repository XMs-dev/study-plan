./cleanup.sh
pdflatex study-plan.tex
bibtex study-plan.aux > /dev/null
pdflatex study-plan.tex > /dev/null
pdflatex study-plan.tex > /dev/null
