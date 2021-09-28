%ADI: HALÝL ÝBRAHÝM
%SOYADI: ÞENAYDIN
%ÖÐRENCÝ NO: 200707069
%BÖLÜM: BÝLGÝSAYAR MÜHENDÝSLÝÐÝ BÖLÜMÜ
%DERSÝN ADI VE DERSÝN KODU: PROGRAMLAMAYA GÝRÝÞ - BIM-103-50-50
%DERSÝN VERÝLDÝÐÝ AKADEMÝK DÖNEM: 2020-2021 EÐÝTÝM ÖÐRETÝM YILI 1.YARIYIL
%PROJENÝN NUMARASI: PROJE 2
%DERSÝ VEREN ÖÐRETÝM ÜYESÝNÝN ADI: TOLGA AYDIN

clear;
clc;

maas=100;%Maaþý 100 olsun iþçinin
kacIsci=input('KAÇ AY ÇALIÞTIÐINIZI GÝRÝN: ');
prim=0;%Ýlk prim 0'dýr.

while 1
    if kacIsci<0
        kacIsci=input('PANDEMÝDEN DOLAYI ÝÞSÝZ OLDUÐUNUZU ANLADIM, SANIRIM YANLIÞ ANLIYORUM. POZÝTÝF BÝR SAYI GÝRMELÝSÝNÝZ: ');
    
    elseif kacIsci~=fix(kacIsci)
        kacIsci=input('YANLIÞ GÝRÝÞ YAPTINIZ! ÖRNEÐÝN 1.5 AY ÇALIÞTIYSANIZ 1 AY OLARAK GÝRÝN: ');
        
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

fprintf('ÝLK MAAÞIN %%%g KADAR PRÝM ALMIÞSINIZ.\n',prim);