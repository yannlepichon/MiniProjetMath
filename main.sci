clear
clc
//Fichier en entré
    //chemin='DonneesDiscretesNonGroupees.dat'; type_data=1;
    //chemin='DonneesDiscretesGroupees.dat'; type_data=2;
    //chemin='DonneesContinuesNonGroupees.dat'; type_data=3;
    chemin='DonneesContinuesGroupees.dat'; type_data=4;
    //chemin='DonneesDiscretesGroupees3.dat'; type_data=x;
    select type_data 

    case 1 then     //Données Directes non groupés

    //Appel du traitement des données
        exec('TraitementDonnees.sci', -1);
        [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
    //Appel de l'affichage LaTex
        exec('AffichageLaTexDDNG.sce', -1);
        AffichageLaTexDDNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);

    case 2 then     //Données Directes groupés

    //Appel du traitement des données
        exec('TraitementDonnees.sci', -1);
        [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
    //Appel de l'affichage LaTex
        exec('AffichageLaTexDDG.sce', -1);
        AffichageLaTexDDG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);    

    case 3 then     //Données Continues non groupés

    //Appel du traitement des données
        exec('TraitementDonnees.sci', -1);
        [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
    //Appel de l'affichage LaTex
        exec('AffichageLaTexDCNG.sce', -1);
        AffichageLaTexDCNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);   

    case 4 then     //Données Continues groupés

    //Appel du traitement des données
        exec('TraitementDonnees.sci', -1);
        [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
    //Appel de l'affichage LaTex
        exec('AffichageLaTexDCG.sce', -1);
        AffichageLaTexDCG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);    
        
    end

