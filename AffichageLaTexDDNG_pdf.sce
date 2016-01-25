function AffichageLaTexDDNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab,val_min,val_max);// Il faut appeler la fonctionner avec le paramètre "tab" en plus

        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //
        //       Mise en page et présentation       //
        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //

    // IINITIALISATION DU DOCUMENT PDF

fd=mopen('AffichageLaTexDDNG_pdf.tex','wt');
mfprintf(fd,"\\\documentclass[a4paper,12pt,reqno]{article}\n");
//mfprintf(fd,"\\\documentclass[a4paper,12pt,reqno]{amsart}\n");

mfprintf(fd,'\\\usepackage{amsmath}\n');
mfprintf(fd,'\\\usepackage{amsfonts}\n');
mfprintf(fd,'\\\usepackage{amssymb}\n');
mfprintf(fd,'\\\usepackage{graphicx}\n');

mfprintf(fd,'\\newcommand{\\newparagraphe}[1]{\\paragraph{#1}\\mbox{}\\\\}\n');
mfprintf(fd,'\\\begin{document}\n');

mfprintf(fd,'\\\')
mfprintf(fd,'begin{center}\n');
mfprintf(fd,'{ \\\huge Projet Latex/Scilab} \n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'includegraphics[scale=0.5]{Scilab_logo.jpg}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'\includegraphics[scale=0.5]{LaTeX_logo.jpg}\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\AUTEURS :\n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,' Cadio Florent , Le Pichon Yann, Albouy Hugo,Ouatik Said');
mfprintf(fd,'\\\\ Yildirim Herve, Merouane Mehdi, Rafidison michael \n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'end{center}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'textbf{Resume} Ce projet nous permettra de prendre en main Scilab et de generer une documentation propre avec le logiciel Latex\n');
mfprintf(fd,'\\\');
mfprintf(fd,'\pagebreak \n');

mfprintf(fd,'\\\');
mfprintf(fd,'tableofcontents \n');
mfprintf(fd,'\\\');
mfprintf(fd,'cleardoublepage\n');
mfprintf(fd,'\\\');
mfprintf(fd,'pagestyle{plain}\n');



mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\section{Introduction}\n');
mfprintf(fd,'Ceci est une partie du compte rendu du mini projet de modelisation statistique, celle-ci concerne les Donnees Discrete Non Groupees. Ce document fait suite a une demande realisee par monsieur Dariush Ghorbanzadeh, dans le cadre du projet de derniere annee du cycle ingenieur.');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');

mfprintf(fd,'La presente demande, est de developper et de realiser un outil de modelisation statistique a l aide du logiciel Scilab. A partir de fichiers contenant des donnees, nous devons effectuer differents traitements statistiques,  estimations et modelisations et les afficher a l aide de Latex en format pdf et html.');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'Lors de ce projet, nous aurons a mettre en pratique  les notions theoriques acquises ces deux dernieres annees.');

mfprintf(fd,'\\\');
mfprintf(fd,'\pagebreak \n');
mfprintf(fd,'\\\section{Traitement des DDNG}\n');

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
        mfprintf(fd,'%d & %d & %d & %d & %d\\\\\n',tab(i),tab(i+10),tab(i+20),tab(i+30),tab(i+40));
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
mfprintf(fd,'Min & % 0.2f \\\\\n',val_min);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Max & % 0.2f \\\\\n',val_max);
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
mfprintf(fd,'Ecart-type & %.2f \\\\\n',sigma);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Variance & %.2f \\\\\n',Mu2);
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
mfprintf(fd,'\\\includegraphics[scale=0.75]{figure1.png}\n');

    // FERMETURE ET MISE A JOUR DU FICHIER LATEX
    
mfprintf(fd,'\\\end{document}\n');
mclose('AffichageLaTexDDNG.tex');


endfunction
 
