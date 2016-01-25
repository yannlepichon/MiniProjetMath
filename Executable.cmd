"C:\Program Files\scilab-5.5.2\bin\WScilex.exe" -f main.sci

pdfLatex AffichageLaTexDDNG.tex
pdfLatex AffichageLaTexDDNG.tex
pdfLatex AffichageLaTexDDG.tex
pdfLatex AffichageLaTexDDG.tex
pdfLatex AffichageLaTexDCNG.tex
pdfLatex AffichageLaTexDCNG.tex
pdfLatex AffichageLaTexDCG.tex
pdfLatex AffichageLaTexDCG.tex

htLatex AffichageLaTexDDG.tex
htLatex AffichageLaTexDCG.tex
htLatex AffichageLaTexDDNG.tex
htLatex AffichageLaTexDCNG.tex

del /s .\*.toc
del /s .\*.aux
del /s .\*.log
del /s .\*.tex
del /s .\*.lg
del /s .\*.tmp
del /s .\*.xref
del /s .\*.4tc
del /s .\*.dvi
del /s .\*.idv
del /s .\*.4ct
del /s .\figure1.pdf
del /s .\figure2.pdf
del /s .\figure3.pdf
del /s .\figure4.pdf
del /s .\figure1_jpeg.jpg
del /s .\figure2_jpeg.jpg
del /s .\figure3_jpeg.jpg
del /s .\figure4_jpeg.jpg
