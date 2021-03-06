#LaTex Makefile


paper.dvi: paper.tex
	latex paper.tex

paper.ps: paper.dvi
	dvips -Ppdf -G0 paper.dvi
	# the -G0 fixes the ligature problem.

paper.pdf: 
	pdflatex paper.tex

PDF: paper.pdf
	xpdf paper.pdf

clean :
	rm -f paper.pdf paper.dvi paper.ps
