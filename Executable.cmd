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
htLatex AffichageLaTexDDG.tex
htLatex AffichageLaTexDCG.tex
htLatex AffichageLaTexDCG.tex
htLatex AffichageLaTexDDNG.tex
htLatex AffichageLaTexDDNG.tex
htLatex AffichageLaTexDCNG.tex
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
del /s .\*.ps
REM del /s .\figure1.png
REM del /s .\figure2.png
REM del /s .\figure3.png
REM del /s .\figure4.png
