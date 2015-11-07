clear
clc
//Fichier en entré
    chemin='DonneesDiscretesNonGroupees.dat'; type_data=1;
    //chemin='DonneesDiscretesGroupees.dat'; type_data=x;
    //chemin='DonneesContinuesNonGroupees.dat'; type_data=x;
    //chemin='DonneesContinuesGroupees.dat'; type_data=x;
    //chemin='DonneesDiscretesGroupees3.dat'; type_data=x;
    
//Appel du traitement des données
    exec('TraitementDonnees.sci', -1);
    [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2]=TraitementDonnees(chemin,type_data);

//Appel de l'affichage LaTex
    exec('AffichageLaTex.sci', -1);
    AffichageLaTex(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2);
