//function [type_data]=EstimationDonnees(a);


k=10;
taille=50;
Nb_boucles=200;
mu=2;
sigma2=3;
c2=2;

for j=1:Nb_boucles
    X=[];
    for i=1:taille
//        if i < k
//            X(i)=grand(1,1,"nor",mu,sqrt(sigma2));
//        else
            X(i)=grand(1,1,"nor",mu,sqrt(sigma2*c2));
//        end
    end
    
    //Mu -> Moyenne des échantillons
    mu_est(j)=mean(X);
    //    mu_est=mean(X);
    
    // Calcul du nouveau c2 
    Sk=0;           // Sk = Somme des Xi entre 1 et k
    Sku2=0;         // Sku2 = Somme des Xi-µ au carré entre 1 et k
    Sn_k=0;         // Sn-k = Somme des Xi entre k+1 et n
    Sn_k2=0;        // Sn-k2 = Somme des Xi au carré entre k+1 et n
    Sn_ku2=0;       // Sn_ku2 = Somme des Xi-µ au carré entre k+1 et n
    for i=1:k
        Sk=Sk+X(i);
        Sku2=Sku2+(X(i)-mu_est(j))^2;
    end
    for i=(k+1):taille
        Sn_k=Sn_k+X(i);
        Sn_k2=Sn_k2+X(i)^2;
        Sn_ku2=Sn_ku2+(X(i)-mu_est(j))^2;
    end 
    
    // Calcul du nouveau C_carre et du nouveau Sigma_carre
    c2_est(j) = (mu_est(j)*(taille-k)-Sn_k)/(Sk-mu_est(j)*k);
    sigma2_est(j) = (Sn_k2+(taille-k)*mu_est(j)^2-2*mu_est(j)*Sn_k)/(c2*(taille-k));
//    c2_est = (mu_est*(taille-k)-Sn_k)/(Sk-mu_est*k);
//    sigma2_est = (Sn_k2+(taille-k)*mu_est^2-2*mu_est*Sn_k)/(c2_est*(taille-k));
    
    //Estimation sur k    
    log_vr=-(taille/2)*log(2*%pi)-(taille/2)*log(sigma2_est(j))-(taille-k)/2*log(c2)-1/(2*sigma2_est(j))*Sku2-1/(2*c2*sigma2_est(j))*Sn_ku2;
    //log_vr1=(-taille/2)*log(2*%pi)-((taille/2)*log(sigma2_est(j))-
    
    Rn(j)=(k/taille)*(1-(k/taille))*log_vr;
//    Rn2(j)=(k/taille)*(1-(k/taille))*log_vr2;
end

mu_est_final=mean(mu_est)
c2_est_final=mean(c2_est)
sigma2_est_final=mean(sigma2_est)
k_est_final=max(Rn)
//k_est_final2=max(Rn2)

// fichier contenant les simulations
    dataMu = mopen('dataMu.dat', 'wt'); // ouverture du fichier Mu_est
    dataC2 = mopen('dataC2.dat', 'wt'); // ouverture du fichier C_carre2_est
    dataSigma2 = mopen('dataSigma2.dat', 'wt'); // ouverture du fichier Sigma2_est
    datak = mopen('datak.dat', 'wt'); // ouverture du fichier k_est_final
    
    for j = 1:Nb_boucles
        mfprintf(dataMu,'%0.4f\n',mu_est(j));   //écriture des données de Mu sur le fichier dataMu
        mfprintf(dataC2,'%0.4f\n',c2_est(j));   //écriture des données de C2 sur le fichier dataC2
        mfprintf(dataSigma2,'%0.4f\n',sigma2_est(j));//écriture des données de Sigma2 sur le fichier dataSigma2
    end
    mfprintf(datak,'%d\n',k_est_final);     //écriture des données de Mu sur le fichier dataMu
    
    mclose all;  // fermeture du fichier    

//type_data = 3

//endfunction

