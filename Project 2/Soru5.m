clear;
clc;

maas=100;%Maaşı 100 olsun işçinin
kacIsci=input('KAÇ AY ÇALIŞTIĞINIZI GİRİN: ');
prim=0;%İlk prim 0'dır.

while 1
    if kacIsci<0
        kacIsci=input('PANDEMİDEN DOLAYI İŞSİZ OLDUĞUNUZU ANLADIM, SANIRIM YANLIŞ ANLIYORUM. POZİTİF BİR SAYI GİRMELİSİNİZ: ');
    
    elseif kacIsci~=fix(kacIsci)
        kacIsci=input('YANLIŞ GİRİŞ YAPTINIZ! ÖRNEĞİN 1.5 AY ÇALIŞTIYSANIZ 1 AY OLARAK GİRİN: ');
        
    else
        for i=1:kacIsci
            if mod(i,12)==0
                maas=maas+maas*(10/100);%Maasa %10 zam.
            end
            
            prim=prim+maas*(1/100);     
        end
        break;
        
    end
end

fprintf('İLK MAAŞIN %%%g KADAR PRİM ALMIŞSINIZ.\n',prim);
