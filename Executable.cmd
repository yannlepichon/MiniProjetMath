"C:\Program Files\scilab-5.5.2\bin\WScilex.exe" -f main.sci

pdfLatex AffichageLaTexDDNG.tex
pdfLatex AffichageLaTexDDNG.tex
pdfLatex AffichageLaTexDDG.tex
pdfLatex AffichageLaTexDDG.tex
pdfLatex AffichageLaTexDCNG.tex
pdfLatex AffichageLaTexDCNG.tex
pdfLatex AffichageLaTexDCG.tex
pdfLatex AffichageLaTexDCG.tex

del /s .\*.toc
del /s .\*.aux
del /s .\*.log
del /s .\figure1.pdf
del /s .\figure2.pdf
del /s .\figure3.pdf
del /s .\figure4.pdf
