function AffichageLaTexDCNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);// Il faut appeler la fonctionner avec le paramètre "tab" en plus

        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //
        //       Mise en page et présentation       //
        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //

    // IINITIALISATION DU DOCUMENT PDF
//tab = read('DonneesContinuesNonGroupees.dat', 10, 2); // à commenter la ligne si le fonctionnement par appel de fonction est OK
fd=mopen('AffichageLaTexDCNG_html.tex','wt');
mfprintf(fd,"\\\documentclass[a4paper,12pt,reqno]{article}\n");

mfprintf(fd,'\\\usepackage{amsmath}\n');
mfprintf(fd,'\\\usepackage{amsfonts}\n');
mfprintf(fd,'\\\usepackage{amssymb}\n');
mfprintf(fd,'\\\usepackage{graphicx}\n');
mfprintf(fd,'\\newcommand{\\newparagraphe}[1]{\\paragraph{#1}\\mbox{}\\\\}\n');
mfprintf(fd,'\\\begin{document}\n');

        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //
        // Affichage des données récupéré et traité //
        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //


mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\section{Traitement des DCNG}\n');

        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //
        // AFFICHAGE DES DONNEES LU SUR LE FICHIER SOURCE //
        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //

mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\subsection{Valeurs du tableau}\n');

mfprintf(fd,'\\\begin{center}\n');
mfprintf(fd,'\\\begin{tabular}{|c|c|c|c|c|}\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'\\\multicolumn{5}{c|}{Xi} \\\\\n');
mfprintf(fd,'\\\hline\n');

//construction du tableau avec les valeur de tab (=valeur lu a partir du fichier)
for i=1:1:length(tab)/5
  mfprintf(fd,'%0.3f & %0.3f &%0.3f &%0.3f &%0.3f\\\\\n',tab(i),tab(i+20),tab(i+40),tab(i+60),tab(i+80));
  mfprintf(fd,'\\\hline\n');
end;
mfprintf(fd,'\\\end{tabular}\n');
mfprintf(fd,'\\\end{center}\n');

mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');


    // AFFICHAGE DES RESULTATS DU TRAITEMENT DES DONNEES

mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\subsection{Résultats du traitement}\n');

mfprintf(fd,'\\\begin{center}\n');
mfprintf(fd,'\\\begin{tabular}{|l|r|}\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes & Resultats \\\\\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes Geometrique & %.2f \\\\\n',G);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes Arithmetique & %.2f \\\\\n',X);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes Harmonique & %.2f \\\\\n',H);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Ecart Moyen arithmétique & %.2f \\\\\n',e);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 1 & %.2f \\\\\n',M1);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 2 & %.2f \\\\\n',M2);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 3 & %.2f \\\\\n',M3);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 4 & %.2f \\\\\n',M4);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centré dordre 1 & %.2f \\\\\n',Mu1);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centré dordre 2 & %.2f \\\\\n',Mu2);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centré dordre 3 & %.2f \\\\\n',Mu3);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centré dordre 4 & %.2f \\\\\n',Mu4);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Sigma & %.2f \\\\\n',sigma);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Fisher1 & %.2f \\\\\n',Fisher1);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Fisher2 & %.2f \\\\\n',Fisher2);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'\\\end{tabular}\n');
mfprintf(fd,'\\\end{center}\n');


    // AFFICHAGE DES HISTOGRAMME
    
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\subsection{Histogrammes}\n');
mfprintf(fd,'\\\includegraphics[scale=0.75]{figure3_jpeg.jpg}\n');

    // FERMETURE ET MISE A JOUR DU FICHIER LATEX
    
mfprintf(fd,'\\\end{document}\n');
mclose('AffichageLaTexDCNG.tex');


endfunction
 
