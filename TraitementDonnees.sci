function [X,Q,G,H,e,M1,M2,M3,M4,Mu1,Mu2,Mu3,Mu4,sigma,Fisher1,Fisher2]=TraitementDonnees(chemin,type_data) //Création d'une fonction nommée EcartMoyenArith prenant en arguments d'entrée un tableau contenant des données et éventuellement des poids sur ces données, et un type de données (groupées, non groupées, etc). La valeur de l'écart moyen sera enregistrée et retournée sous le nom de variable 'e'.


    select type_data
    case 1 then
        nb_col = 1;
    case 2 then
        nb_col = 2;
    case 3 then
        nb_col = 1;
    case 4 then
        nb_col = 3;
    end
    tab = read(chemin, -1, nb_col);


    sommeMX=0; //Moyenne Arithmétique
    sommeMQ=0; //Moyenne Quadratique
    sommeMG=0; //Moyenne Géométrique
    sommeMH=0; //Moyenne Harmonique
    sommeEM=0; //Moyenne Ecart Moyen
    sommeM1=0; //Moment d'ordre 1
    sommeM2=0; //Moment d'ordre 2
    sommeM3=0; //Moment d'ordre 3
    sommeM4=0; //Moment d'ordre 4
    sommeMu1=0; //Moment centré d'ordre 1
    sommeMu2=0; //Moment centré d'ordre 2
    sommeMu3=0; //Moment centré d'ordre 3
    sommeMu4=0; //Moment centré d'ordre 4


    //*************************************//
    //                                     //
    //Cas de données discrètes NON-GROUPEES//
    //                                     //
    //*************************************//

    if type_data==1 then

        data=tab(:,1); //On récupère la 1ere colonne du tableau, celle qui contient les données. Dans le cas de données groupées le tableau dispose d'une deuxième colonne contenant le poids des valeurs.
        n=length(data); //Permet de récupérer le nombre de valeurs
        no_GH=0;

        for i=1:n
            sommeMX=sommeMX+data(i);
            sommeMQ=sommeMQ+data(i)^2;
            sommeMG=sommeMG+log(data(i));
            sommeMH=sommeMH+(1/data(i));
            sommeM1=sommeM1+data(i);
            sommeM2=sommeM2+data(i)^2;
            sommeM3=sommeM3+data(i)^3;
            sommeM4=sommeM4+data(i)^4;
        end

        X=(1/n)*sommeMX; //Calcul de la moyenne arithmétique

        for i=1:n
            sommeEM=sommeEM+abs(data(i)-X); //Etape de la somme : E(|xi-X|)
            sommeMu1=sommeMu1+(data(i)-X);
            sommeMu2=sommeMu2+(data(i)-X)^2;
            sommeMu3=sommeMu3+(data(i)-X)^3;
            sommeMu4=sommeMu4+(data(i)-X)^4;
        end

        tab2=unique(tab);
        for i=1:length(tab2)
            tab2(i,2)=length(find(tab==tab2(i)));
        end

        plot(min(tab2(:,1)),0);
        xrects([tab2(:,1)';tab2(:,2)';(0.1*ones(tab2(:,1)))';tab2(:,2)']);


        //*************************************//
        //                                     //
        //  Cas de données discrètes GROUPEES  //
        //                                     //
        //*************************************//

    elseif type_data==2 then
        data=tab(:,1); //On récupère la 1ere colonne du tableau, celle qui contient les données. Dans le cas de données groupées le tableau dispose d'une deuxième colonne contenant le poids des valeurs.
        data_weight=tab(:,2); //Récupération des poids ni stockées dans la deuxième colonne du tableau
        n=sum(data_weight); //Permet de récupérer le nombre de valeurs
        k=length(data);
        no_GH=0;

        for i=1:k
            sommeMX=sommeMX+data_weight(i)*data(i);
            sommeMQ=sommeMQ+data_weight(i)*data(i)^2;
            sommeMG=sommeMG+data_weight(i)*log(data(i));
            sommeMH=sommeMH+(data_weight(i)/data(i));
            sommeM1=sommeM1+data_weight(i)*data(i);
            sommeM1=sommeM2+data_weight(i)*data(i)^2;
            sommeM1=sommeM3+data_weight(i)*data(i)^3;
            sommeM1=sommeM4+data_weight(i)*data(i)^4;
        end

        X=(1/n)*sommeMX; //Calcul de la moyenne arithmétique

        for i=1:k
            sommeEM=sommeEM+data_weight(i)*abs(data(i)-X); //Etape de la somme : E(ni|xi-X|)
            sommeMu1=sommeMu1+data_weight(i)*(data(i)-X);
            sommeMu2=sommeMu2+data_weight(i)*(data(i)-X)^2;
            sommeMu3=sommeMu3+data_weight(i)*(data(i)-X)^3;
            sommeMu4=sommeMu4+data_weight(i)*(data(i)-X)^4;
        end

        plot(min(data),0);
        xrects([data';data_weight';(0.1*ones(data))';data_weight']);


        //*************************************//
        //                                     //
        //Cas de données continues NON-GROUPEES//
        //                                     //
        //*************************************//

    elseif type_data==3 then

        data=tab(:,1);
        n=length(data);

        test=sign(data);
        test2=find(test==-1);
        if length(test2>0) then
            no_GH=1;
        else
            no_GH=0;
        end

        for i=1:n
            sommeMX=sommeMX+data(i);
            sommeMQ=sommeMQ+data(i)^2;
            if no_GH==0 then
                sommeMG=sommeMG+log(data(i));
                sommeMH=sommeMH+(1/data(i));
            end
            sommeM1=sommeM1+data(i);
            sommeM2=sommeM2+data(i)^2;
            sommeM3=sommeM3+data(i)^3;
            sommeM4=sommeM4+data(i)^4;
        end

        X=(1/n)*sommeMX; //Calcul de la moyenne arithmétique

        for i=1:n
            sommeEM=sommeEM+abs(data(i)-X); //Etape de la somme : E(|xi-X|)
            sommeMu1=sommeMu1+(data(i)-X);
            sommeMu2=sommeMu2+(data(i)-X)^2;
            sommeMu3=sommeMu3+(data(i)-X)^3;
            sommeMu4=sommeMu4+(data(i)-X)^4;
        end

        tab2=unique(tab);
        for i=1:length(tab2)
            tab2(i,2)=length(find(tab==tab2(i)));
        end

        bar(tab2(:,1),tab2(:,2));


        //*************************************//
        //                                     //
        //  Cas de données continues GROUPEES  //
        //                                     //
        //*************************************//

    elseif type_data==4 then

        data=tab(:,1);
        data2=tab(:,2);
        data_weight=tab(:,3);
        n=sum(data_weight);
        k=length(data);

        test=sign(data);
        test2=find(test==-1);
        if length(test2>0) then
            no_GH=1;
        else
            no_GH=0;
        end

        for i=1:k
            c(i)=(data(i)+data2(i))/2;

            sommeMX=sommeMX+data_weight(i)*c(i);
            sommeMQ=sommeMQ+data_weight(i)*c(i)^2;
            if no_GH==0 then
                sommeMG=sommeMG+data_weight(i)*log(c(i));
                sommeMH=sommeMH+(data_weight(i)/c(i));
            end
            sommeM1=sommeM1+data_weight(i)*c(i);
            sommeM1=sommeM2+data_weight(i)*c(i)^2;
            sommeM1=sommeM3+data_weight(i)*c(i)^3;
            sommeM1=sommeM4+data_weight(i)*c(i)^4;
        end

        X=(1/n)*sommeMX; //Calcul de la moyenne arithmétique

        for i=1:k
            sommeEM=sommeEM+data_weight(i)*abs(c(i)-X); //Etape de la somme : E(ni|xi-X|)
            sommeMu1=sommeMu1+data_weight(i)*(c(i)-X);
            sommeMu2=sommeMu2+data_weight(i)*(c(i)-X)^2;
            sommeMu3=sommeMu3+data_weight(i)*(c(i)-X)^3;
            sommeMu4=sommeMu4+data_weight(i)*(c(i)-X)^4;
        end

        plot(min(data),0);
        xrects([data';data_weight';(data2-data)';data_weight']);
    end


    Q=sqrt((1/n)*sommeMQ); //Calcul de la moyenne quadratique
    if no_GH==0 then
        G=exp((1/n)*sommeMG); //Calcul de la moyenne géométrique
        H=((1/n)*sommeMH)^-1; //Calcul de la moyenne harmonique
    else
        G='null';
        H='null';
    end
    e=(1/n)*sommeEM; //Calcul de l'écart-moyen arithmétique
    M1=(1/n)*sommeM1; //Calcul du moment d'ordre 1
    M2=(1/n)*sommeM2; //Calcul du moment d'ordre 2
    M3=(1/n)*sommeM3; //Calcul du moment d'ordre 3
    M4=(1/n)*sommeM4; //Calcul du moment d'ordre 4
    Mu1=(1/n)*sommeMu1; //Calcul du moment centré d'ordre 1
    Mu2=(1/n)*sommeMu2; //Calcul du moment centré d'ordre 2
    Mu3=(1/n)*sommeMu3; //Calcul du moment centré d'ordre 3
    Mu4=(1/n)*sommeMu4; //Calcul du moment centré d'ordre 4
    sigma=sqrt(Mu2);
    Fisher1=Mu3/sigma^3;
    Fisher2=Mu4/sigma^4-3;

    //FIN DU TRAITEMENT//

endfunction
