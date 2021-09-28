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

fprintf('\n');
faktoriyel=1;%Çarpmada etkisiz eleman 1'dir.

while 1==1%SONSUZ DÖNGÜ HATALAR ÝÇÝN, HATA OLURSA TEKRAR DEÐER ÝSTERÝM.
    sayi=input('POZÝTÝF BÝR TAM SAYI GÝRÝN: ');
    
    if (sayi>0) && (sayi==round(sayi))%GÝRÝLEN SAYI POZÝTÝF VE TAM SAYI ÝSE
        if sayi==1 || sayi==2%Girilen sayý 1 veya 2 veya ise faktoriyel hesaplayamayýz. 1 girerse 0 çift ama 5 ile tam bölünür.
            fprintf('GÝRDÝÐÝNÝZ SAYIDAN KÜÇÜK VE 5 ÝLE TAM BÖLÜNMEYEN BU SAYININ FAKTORÝYELÝ ALINMAZ!\n');  
        else
            for i=sayi-1:-1:1%GÝRÝLEN SAYIDAN KÜÇÜK OLAN SAYILARI TEK TEK GEZER.

                if mod(i,2)==0 && mod(i,5)~=0
                    sayi2=i;%Bulunan sayýyý baþka bir deðiþkene eþitledim.
                    for j=1:i%BULUNAN SAYININ FAKTORÝYELÝ ALINIR.
                        faktoriyel=faktoriyel*j;
                    end
                    break;%ARANAN KAN BULUNDU :) YANÝ HEM ÇÝFT HEM DE 5 ÝLE BÖLÜNMEYEN SAYI BULUNDU, FAKTORÝYELÝ ALINDI VE BÝTÝRDÝK
                end      

            end
            break;%TÜM HATALAR TESPÝT EDÝLDÝ VE TEKRAR DEÐER ALINDI. SORUN OLMADIÐI TAKDÝRDE DÖGÜYÜ SONLANDIRIR.
        end
    
    else
        fprintf('GÝRDÝÐÝNÝZ SAYI POZÝTÝF BÝR TAM SAYI DEÐÝL!!!\n\n');
    end
end

fprintf('GÝRDÝÐÝNÝZ SAYIDAN KÜÇÜK VE ONA EN YAKIN 5 ÝLE TAM BÖLÜNEMEYEN VE ÇÝFT OLAN SAYI: %d, BU SAYININ FAKTÖRÝYELÝ: %g\n',sayi2,faktoriyel);

