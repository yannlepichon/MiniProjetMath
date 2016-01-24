clear
clc
//Fichier en entré
    
    for type_data= 1:1:4
        
          
        select type_data 
        case 1 then     //Données Directes non groupés
        chemin='DonneesDiscretesNonGroupees.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDDNG_pdf.sce', -1);
            AffichageLaTexDDNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);
    
        case 2 then     //Données Discretes groupés
        chemin='DonneesDiscretesGroupees.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDDG_pdf.sce', -1);
            AffichageLaTexDDG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);     
    
        case 3 then     //Données Continues non groupés
        chemin='DonneesContinuesNonGroupees.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDCNG_pdf.sce', -1);
            AffichageLaTexDCNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);   
    
        case 4 then     //Données Continues groupés
        chemin='DonneesDiscretesGroupees3.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDCG_pdf.sce', -1);
            AffichageLaTexDCG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);    
        end
    end
    
exit   //Décommenter si vous voulez que scilab ce ferme automatiquement
