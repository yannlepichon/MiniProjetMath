function AffichageLaTexDCG(tab,X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);// Il faut appeler la fonctionner avec le paramètre "tab" en plus

        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //
        //       Mise en page et présentation       //
        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //

    // IINITIALISATION DU DOCUMENT PDF

fd=mopen('AffichageLaTexDCG.tex','wt');
mfprintf(fd,"\\\documentclass[a4paper,12pt,reqno]{article}\n");
//mfprintf(fd,"\\\documentclass[a4paper,12pt,reqno]{amsart}\n");

mfprintf(fd,'\\\usepackage{amsmath}\n');
mfprintf(fd,'\\\usepackage{amsfonts}\n');
mfprintf(fd,'\\\usepackage{amssymb}\n');
mfprintf(fd,'\\\usepackage{graphicx}\n');

mfprintf(fd,'\\newcommand{\\newparagraphe}[1]{\\paragraph{#1}\\mbox{}\\\\}\n');

mfprintf(fd,'\\\begin{document}\n');
mfprintf(fd,'{ \\\huge Projet 3eme Annee} \n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\AUTEURS :');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,' Cadio Florent , Le Pichon Yann, Albouy Hugo,Ouatik Said');
mfprintf(fd,'\\\\ Yildirim Herve, Merouane Mehdi, Rafidison michael \n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\dedicatory{A l intention de monsieur Ghorbanzadeh}\n');
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\begin{abstract}\n');
mfprintf(fd,'\\\Resume Ce projet nous permettra de prendre en main Scilab et de generer une documentation propre avec le logiciel Latex\n');
mfprintf(fd,'\\\end{abstract}\n');
mfprintf(fd,'\\\maketitle\n');


mfprintf(fd,'\\\section{Introduction}\n');
mfprintf(fd,'\\\fin intro\n');



        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //
        // Affichage des données récupéré et traité //
        // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% //


mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\section{Traitement des DCG}\n');


    // AFFICHAGE DES DONNEES LU SUR LE FICHIER SOURCE

mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\subsection{Valeurs du tableau}\n');

mfprintf(fd,'\\\begin{center}\n');
mfprintf(fd,'\\\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}\n');
mfprintf(fd,'\\\hline\n');

//construction du tableau avec les valeur de tab (=valeur lu a partir du fichier)
for i=1:1:length(tab)/2
    mfprintf(fd,'%.0.2f & %.0.2f \\\\\n',tab(i),tab(i+length(tab)/2));
    mfprintf(fd,'\\\hline\n');
end;

mfprintf(fd,'\\\end{tabular}\n');
mfprintf(fd,'\\\end{center}\n');

mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');


    // AFFICHAGE DES RESULTATS DU TRAITEMENT DES DONNEES

mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\subsection{Resultats du traitement}\n');

mfprintf(fd,'\\\begin{center}\n');
mfprintf(fd,'\\\begin{tabular}{|l|r|}\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes & Resultats \\\\\n');
mfprintf(fd,'\\\hline\n');
if(G~='null') then
    mfprintf(fd,'Moyennes Geometrique & % 0.2f \\\\\n',G);
    mfprintf(fd,'\\\hline\n');
end
mfprintf(fd,'Moyennes Arithmetique & % 0.2f \\\\\n',X);
mfprintf(fd,'\\\hline\n');
if (H~='null') then
    mfprintf(fd,'Moyennes Harmonique & % 0.2f \\\\\n',H);
    mfprintf(fd,'\\\hline\n');
end
mfprintf(fd,'Ecart Moyen arithmétique & % 0.2f \\\\\n',e);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 1 & % 0.2f \\\\\n',M1);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 2 & % 0.2f \\\\\n',M2);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 3 & % 0.2f \\\\\n',M3);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment dordre 4 & % 0.2f \\\\\n',M4);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centre dordre 1 & % 0.2f \\\\\n',Mu1);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centre dordre 2 & % 0.2f \\\\\n',Mu2);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centre dordre 3 & % 0.2f \\\\\n',Mu3);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moment centre dordre 4 & % 0.2f \\\\\n',Mu4);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Sigma & % 0.2f \\\\\n',sigma);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Fisher1 & % 0.2f \\\\\n',Fisher1);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Fisher2 & % 0.2f \\\\\n',Fisher2);
mfprintf(fd,'\\\hline\n');

mfprintf(fd,'\\\end{tabular}\n');
mfprintf(fd,'\\\end{center}\n');


    // AFFICHAGE DES HISTOGRAMME
    
mfprintf(fd,'\\\');
mfprintf(fd,'newparagraphe{}\n');
mfprintf(fd,'\\\subsection{Histogrammes}\n');

    // FERMETURE ET MISE A JOUR DU FICHIER LATEX
    
mfprintf(fd,'\\\end{document}\n');
mclose('AffichageLaTexDCG.tex');

endfunction
