function AffichageLaTex(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2)

//Ecrire dans un fichier texte les résultats obtenus 

x =1.0;
t=0;
fd=mopen('test1.tex','wt');
mfprintf(fd,"\\\documentclass[a4paper,12pt,reqno]{article}\n");

mfprintf(fd,'\\\usepackage{amsmath}\n');
mfprintf(fd,'\\\usepackage{amsfonts}\n');
mfprintf(fd,'\\\usepackage{amssymb}\n');
mfprintf(fd,'\\\usepackage{graphicx}\n');

mfprintf(fd,'\\newcommand{\\newparagraphe}[1]{\\paragraph{#1}\\mbox{}\\\\}\n');

mfprintf(fd,'\\\begin{document}\n');
mfprintf(fd,'\\title[Short Title (for the running head)]{Projet 3eme Annee}\n');
mfprintf(fd,'\\\author{Florent Cadio}\n');
mfprintf(fd,'\\\author{Le Pichon Yann}\n');
mfprintf(fd,'\\\author{Albouy Hugo}\n');
mfprintf(fd,'\\\author{Ouatik Said}\n');
mfprintf(fd,'\\\author{Yildirim Herve}\n');
mfprintf(fd,'\\\author{Merouane Mehdi}\n');
mfprintf(fd,'\\\author{Rafidison michael}\n');

mfprintf(fd,'\\\date{Novembre 06, 2015}\n');
mfprintf(fd,'\\\dedicatory{A l intention de monsieur Ghorbanzadeh}\n');

mfprintf(fd,'\\\begin{abstract}\n');
mfprintf(fd,'\\\Resume\n');
mfprintf(fd,'\\\end{abstract}\n');
mfprintf(fd,'\\\maketitle\n');


mfprintf(fd,'\\\section{Introduction}\n');
mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\\Coucou\n');

mfprintf(fd,'\\\section{Developpement}\n');
mfprintf(fd,'\\newparagraphe{}\n');

mfprintf(fd,'\\\subsection{donnees continues}\n');
mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\\subsubsection{Groupees}\n');

mfprintf(fd,'\\\begin{tabular}{|l|r|}\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes & Resultats \\\\\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes Geometrique & %.2f\\\\\n',x);
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes Arithmetique & 2.2 \\\\\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'Moyennes Harmonique & 2.2 \\\\\n');
mfprintf(fd,'\\\hline\n');
mfprintf(fd,'\\\end{tabular}\n');



mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\\subsubsection{Non groupees}\n');
mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\\subsection{donnees discretes}\n');
mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\\subsubsection{Groupees}\n');
mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\\subsubsection{Non groupees}\n');
mfprintf(fd,'\\newparagraphe{}\n');
mfprintf(fd,'\\newparagraphe{}\n');

mfprintf(fd,'\\\end{document}\n');

mclose(fd);

endfunction

