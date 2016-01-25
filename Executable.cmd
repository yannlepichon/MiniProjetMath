"C:\Program Files\scilab-5.5.2\bin\WScilex.exe" -f main.sci

pdfLatex AffichageLaTexDDNG_pdf.tex
pdfLatex AffichageLaTexDDNG_pdf.tex
pdfLatex AffichageLaTexDDG_pdf.tex
pdfLatex AffichageLaTexDDG_pdf.tex
pdfLatex AffichageLaTexDCNG_pdf.tex
pdfLatex AffichageLaTexDCNG_pdf.tex
pdfLatex AffichageLaTexDCG_pdf.tex
pdfLatex AffichageLaTexDCG_pdf.tex

htLatex AffichageLaTexDDG_html.tex
htLatex AffichageLaTexDDG_html.tex
htLatex AffichageLaTexDCG_html.tex
htLatex AffichageLaTexDCG_html.tex
htLatex AffichageLaTexDDNG_html.tex
htLatex AffichageLaTexDDNG_html.tex
htLatex AffichageLaTexDCNG_html.tex
htLatex AffichageLaTexDCNG_html.tex

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
 
