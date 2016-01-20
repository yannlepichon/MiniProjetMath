function AffichageLaTexIntro();

//Ecrire dans un fichier texte les résultats obtenus 

fd=mopen('AffichageLaTexIntro.tex','wt');
mfprintf(fd,"\\\documentclass[a4paper,12pt,reqno]{article}\n");

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


mfprintf(fd,'\\\end{document}\n');

mclose(fd);

endfunction
