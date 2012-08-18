rm -f *.{aux,bll,blg,log,pdf,toc,bak,out,dvi,ps,*~} */*.{pdf,aux,bak,log,*~} */*/*.{pdf,aux,bak,log,*~}
pdflatex study-plan.tex
bibtex study-plan.aux > /dev/null
pdflatex study-plan.tex > /dev/null
pdflatex study-plan.tex > /dev/null
