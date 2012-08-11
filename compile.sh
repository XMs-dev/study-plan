rm -f *.{aux,bll,blg,log,pdf,toc,bak,out} */*.{pdf,aux,bak} */*/*.{pdf,aux,bak}
pdflatex study-plan.tex
bibtex study-plan.aux > /dev/null
pdflatex study-plan.tex > /dev/null
pdflatex study-plan.tex > /dev/null
