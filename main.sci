clear
clc
//Fichier en entré
    
    for type_data= 1:1:4
        
        //Appel de l'affichage LaTex
            exec('AffichageLaTexIntro.sce', -1);
            AffichageLaTexIntro(); 
            
        select type_data 
        case 1 then     //Données Directes non groupés
        chemin='DonneesDiscretesNonGroupees.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDDNG.sce', -1);
            AffichageLaTexDDNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);
    
        case 2 then     //Données Directes groupés
        chemin='DonneesDiscretesGroupees.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDDG.sce', -1);
            AffichageLaTexDDG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);     
    
        case 3 then     //Données Continues non groupés
        chemin='DonneesContinuesNonGroupees.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDCNG.sce', -1);
            AffichageLaTexDCNG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);   
    
        case 4 then     //Données Continues groupés
        chemin='DonneesContinuesGroupees.dat';
        //Appel du traitement des données
            exec('TraitementDonnees.sci', -1);
            [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab]=TraitementDonnees(chemin,type_data);
        //Appel de l'affichage LaTex
            exec('AffichageLaTexDCG.sce', -1);
            AffichageLaTexDCG(X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2,tab);    
        end
    end
    
exit
