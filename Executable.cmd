"C:\Program Files\scilab-5.5.2\bin\WScilex.exe" -f main.sci

pdfLatex AffichageLaTexDDNG.tex
pdfLatex AffichageLaTexDDNG.tex
pdfLatex AffichageLaTexDDG.tex
pdfLatex AffichageLaTexDDG.tex
pdfLatex AffichageLaTexDCNG.tex
pdfLatex AffichageLaTexDCNG.tex
pdfLatex AffichageLaTexDCG.tex
pdfLatex AffichageLaTexDCG.tex

REM htLatex AffichageLaTexDDG.tex
REM htLatex AffichageLaTexDCG.tex
REM htLatex AffichageLaTexDDNG.tex
REM htLatex AffichageLaTexDCNG.tex

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
REM del /s .\figure1.pdf
REM del /s .\figure2.pdf
REM del /s .\figure3.pdf
REM del /s .\figure4.pdf
REM del /s .\figure1_jpeg.jpg
REM del /s .\figure2_jpeg.jpg
REM del /s .\figure3_jpeg.jpg
REM del /s .\figure4_jpeg.jpg
