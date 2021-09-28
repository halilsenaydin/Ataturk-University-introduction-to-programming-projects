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

%BEN WHÝLE DÖNGÜSÜYLE YAPTIM ÇÜNKÜ KULLANICIDAN KAÇ TANE SAYI ALACAÐIMIZI
%BÝLMÝYORUZ. BU YÜZDEN DE SONSUZ DÖGÜ OLUÞTURARAK KULLANICIDAN DEÐERLER
%ALDIM VE KULLANICI -1 GÝRDÝÐÝ ZAMAN DA DÖNGÜMÜ SONLANDIRDIM SONRASINDA 
%DEÐERLERÝ YAZDIRDIM.

kacSayiGirildiSayaci=0;

pozitifCiftTamSayi=1;%POZÝTÝF ÇÝFT TAM SAYI, burada 1 kullanmamýzýn nedeni çarpmada etkisiz eleman
sayac1=0;%Geometrik Ortalama Ýçin Terim Sayýsý

negatifTekTamSayiToplami=0;
sayac2=0;%Harmonik Ortalama Ýçin Terim Sayýsý

pozitifOndalikliSayi=0;
sayac3=0;%Aritmatik Ortalama Ýçin Terim Sayýsý

sayac4=0; %Ondalýklý Sayý Girldi mi Onu bulma!

enBuyukBulma=intmin;%Negatif Tek Tam Sayý Ýçin!
enBuyukBulma2=intmin;%GÝRÝLEN TÜM DEÐERLER ÝÇÝNDEN EN BÜYÜK BULMA!
enKucukBulma=intmax;%Ondalýklý Sayýlar Ýçin!

while 1==1
    girilenSayilar=input('Lütfen Sayý Girin: ');
    if girilenSayilar~=-1%Eðer bu if koþulunu koymasaydým kullanýcý sadece negatif tek tam sayý girse ve -1 yazsa en büyük sayý -1 olacak, halbuki biz -1'i prgramý sonlandýrmak için kullanýyoruz.
        if girilenSayilar>enBuyukBulma2%Girilen sayýlar arasýnda en büyük bulma.
            enBuyukBulma2=girilenSayilar;
        end
    end
    kacSayiGirildiSayaci=kacSayiGirildiSayaci+1;
    
    if girilenSayilar==-1%EÐER -1 GÝRÝLÝRSE DÖNGÜ SONA ERER AMA EÐER HÝÇ SAYI GÝRÝLMEMÝÞSE UYARI VERÝR VE TEKRAR DEÐER ALIR
        if kacSayiGirildiSayaci==1%1'e eþitlememin sebebi -1 gireceði için zaten bir tane deðer girmiþ olur.
            fprintf('HÝÇ SAYI GÝRMEMÝÞSÝNÝZ :) LÜTFEN SAYI GÝRMEYÝ DENEYÝN!!!\n');
            kacSayiGirildiSayaci=0;%Tekrar sayacý sýfýrladýk.
        else   
            break;%-1 girildiði zaman sayý girilmiþse önceden program sonlanýr.
        end
        
    elseif girilenSayilar==fix(girilenSayilar)%SAYI TAM SAYI ÝSE
        if girilenSayilar>0 && mod(girilenSayilar,2)==0%SAYI ÇÝFT VE POZÝTÝF ÝSE
            pozitifCiftTamSayi=pozitifCiftTamSayi*girilenSayilar;%GÝRÝLEN POZÝTÝF VE ÇÝFT TAM SAYILARIN ÇARPIMI, GEOMETRÝK ORT. ÝÇÝN
            sayac1=sayac1+1;
            
        elseif girilenSayilar<0 && mod(girilenSayilar,2)==1%SAYI NEGATÝF VE TEK ÝSE
            if girilenSayilar>enBuyukBulma%Negatif Tek Tam Sayýlar Arasýnda En Büyük Bulma
                enBuyukBulma=girilenSayilar;
            end
                      
            negatifTekTamSayiToplami=negatifTekTamSayiToplami+(1/girilenSayilar);%HARMONÝK ORT. ÝÇÝN HESAP.
            sayac2=sayac2+1;      
        end
        
    elseif girilenSayilar~=fix(girilenSayilar)%SAYI ONDALIKLI ÝSE
        if girilenSayilar<enKucukBulma%Girilen Ondalýklý Sayýlar Arasýndan En Küçük Bulma
            enKucukBulma=girilenSayilar;
        end
        sayac4=sayac4+1;
        
        if girilenSayilar>0
            pozitifOndalikliSayi=pozitifOndalikliSayi+girilenSayilar;%POZÝTÝF VE ONDALIKLI GÝRÝLEN SAYILARIN TOPLAMI 
            sayac3=sayac3+1;
        end
   
    else
        fprintf('\nOndalýklý Veya Tam Sayý Girin!\n\n');
        
    end  
end

pozitifOndalikliSayilarinAritmetikOrtalamasi=pozitifOndalikliSayi/sayac3;%POZÝTÝF ONDALIKLI SAYILARIN ARÝTMETÝK ORT.
negatifTekTamSayilarinHarmonikOrtalamasi=sayac2/negatifTekTamSayiToplami;%NEGATÝF TEK TAM SAYILARIN HARMONÝK ORT.
pozitifCiftTamSayilarinGeometrikOrtalamasi=nthroot(pozitifCiftTamSayi,sayac1);%POZÝTÝF ÇÝFT TAM SAYILARIN GEOMETRÝK ORT.


if sayac3==0%EÐER HÝÇ POZÝTÝF ONDALIKLI SAYI GÝRÝLMEMÝÞSE
    fprintf('\nGÝRDÝÐÝNÝZ SAYILAR ARASINDA POZÝTÝF ONDALIKLI SAYI MEVCUT DEÐÝLDÝR :)\n');
else
    fprintf('\nGÝRDÝÐÝNÝZ SAYILARDAN POZÝTÝF ONDALIKLI SAYILARIN ARÝTMETÝK ORTALAMASI: %g\n',pozitifOndalikliSayilarinAritmetikOrtalamasi);
end

if sayac2==0%EÐER HÝÇ NEGATÝF TEK TAM SAYI GÝRÝLMEMÝÞSE
    fprintf('\nGÝRDÝÐÝNÝZ SAYILAR ARASINDA NEGATÝF TEK TAM SAYI MEVCUT DEÐÝLDÝR :)\n');
else
    fprintf('\nGÝRDÝÐÝNÝZ SAYILARDAN NEGATÝF TEK TAM SAYILARIN HARMONÝK ORTALAMASI: %g\n',negatifTekTamSayilarinHarmonikOrtalamasi);
    fprintf('\nGÝRDÝÐÝNÝZ SAYILARDAN EN BUYUK NEGATÝF TEK TAM SAYI: %d\n',enBuyukBulma);
end

if sayac1==0%EÐER HÝÇ POZÝTÝF ÇÝFT TAM SAYI GÝRÝLMEMÝÞSE
    fprintf('\nGÝRDÝÐÝNÝZ SAYILAR ARASINDA POZÝTÝF ÇÝFT TAM SAYI MEVCUT DEÐÝLDÝR :)\n');
else
    fprintf('\nGÝRDÝÐÝNÝZ SAYILARDAN POZÝTÝF ÇÝFT TAM SAYILARIN GEOMETRÝK ORTALAMASI: %g\n',pozitifCiftTamSayilarinGeometrikOrtalamasi);
end

if sayac4==0
    fprintf('\nGÝRDÝÐÝNÝZ SAYILAR ARASINDA ONDALIKLI SAYI MEVCUT DEÐÝLDÝR :)\n');
else
    fprintf('\nGÝRDÝÐÝNÝZ SAYILARDAN ONDALIKLI SAYILARIN EN KÜÇÜÐÜ: %g\n',enKucukBulma);
end

if enBuyukBulma2==round(enBuyukBulma2)
    fprintf('\nGÝRDÝÐÝNÝZ SAYILAR ARASINDAN EN BÜYÜK SAYI: %d VE BU SAYI BÝR TAM SAYIDIR.\n',enBuyukBulma2);
else
    fprintf('\nGÝRDÝÐÝNÝZ SAYILAR ARASINDAKÝ EN BÜYÜK SAYI BÝR TAM SAYI DEÐÝLDÝR.\n');
end



