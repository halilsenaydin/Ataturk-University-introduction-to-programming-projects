%ADI: HAL�L �BRAH�M
%SOYADI: �ENAYDIN
%��RENC� NO: 200707069
%B�L�M: B�LG�SAYAR M�HEND�SL��� B�L�M�
%DERS�N ADI VE DERS�N KODU: PROGRAMLAMAYA G�R�� - BIM-103-50-50
%DERS�N VER�LD��� AKADEM�K D�NEM: 2020-2021 E��T�M ��RET�M YILI 1.YARIYIL
%PROJEN�N NUMARASI: PROJE 2
%DERS� VEREN ��RET�M �YES�N�N ADI: TOLGA AYDIN

clear;
clc;

%BEN WH�LE D�NG�S�YLE YAPTIM ��NK� KULLANICIDAN KA� TANE SAYI ALACA�IMIZI
%B�LM�YORUZ. BU Y�ZDEN DE SONSUZ D�G� OLU�TURARAK KULLANICIDAN DE�ERLER
%ALDIM VE KULLANICI -1 G�RD��� ZAMAN DA D�NG�M� SONLANDIRDIM SONRASINDA 
%DE�ERLER� YAZDIRDIM.

kacSayiGirildiSayaci=0;

pozitifCiftTamSayi=1;%POZ�T�F ��FT TAM SAYI, burada 1 kullanmam�z�n nedeni �arpmada etkisiz eleman
sayac1=0;%Geometrik Ortalama ��in Terim Say�s�

negatifTekTamSayiToplami=0;
sayac2=0;%Harmonik Ortalama ��in Terim Say�s�

pozitifOndalikliSayi=0;
sayac3=0;%Aritmatik Ortalama ��in Terim Say�s�

sayac4=0; %Ondal�kl� Say� Girldi mi Onu bulma!

enBuyukBulma=intmin;%Negatif Tek Tam Say� ��in!
enBuyukBulma2=intmin;%G�R�LEN T�M DE�ERLER ���NDEN EN B�Y�K BULMA!
enKucukBulma=intmax;%Ondal�kl� Say�lar ��in!

while 1==1
    girilenSayilar=input('L�tfen Say� Girin: ');
    if girilenSayilar~=-1%E�er bu if ko�ulunu koymasayd�m kullan�c� sadece negatif tek tam say� girse ve -1 yazsa en b�y�k say� -1 olacak, halbuki biz -1'i prgram� sonland�rmak i�in kullan�yoruz.
        if girilenSayilar>enBuyukBulma2%Girilen say�lar aras�nda en b�y�k bulma.
            enBuyukBulma2=girilenSayilar;
        end
    end
    kacSayiGirildiSayaci=kacSayiGirildiSayaci+1;
    
    if girilenSayilar==-1%E�ER -1 G�R�L�RSE D�NG� SONA ERER AMA E�ER H�� SAYI G�R�LMEM��SE UYARI VER�R VE TEKRAR DE�ER ALIR
        if kacSayiGirildiSayaci==1%1'e e�itlememin sebebi -1 girece�i i�in zaten bir tane de�er girmi� olur.
            fprintf('H�� SAYI G�RMEM��S�N�Z :) L�TFEN SAYI G�RMEY� DENEY�N!!!\n');
            kacSayiGirildiSayaci=0;%Tekrar sayac� s�f�rlad�k.
        else   
            break;%-1 girildi�i zaman say� girilmi�se �nceden program sonlan�r.
        end
        
    elseif girilenSayilar==fix(girilenSayilar)%SAYI TAM SAYI �SE
        if girilenSayilar>0 && mod(girilenSayilar,2)==0%SAYI ��FT VE POZ�T�F �SE
            pozitifCiftTamSayi=pozitifCiftTamSayi*girilenSayilar;%G�R�LEN POZ�T�F VE ��FT TAM SAYILARIN �ARPIMI, GEOMETR�K ORT. ���N
            sayac1=sayac1+1;
            
        elseif girilenSayilar<0 && mod(girilenSayilar,2)==1%SAYI NEGAT�F VE TEK �SE
            if girilenSayilar>enBuyukBulma%Negatif Tek Tam Say�lar Aras�nda En B�y�k Bulma
                enBuyukBulma=girilenSayilar;
            end
                      
            negatifTekTamSayiToplami=negatifTekTamSayiToplami+(1/girilenSayilar);%HARMON�K ORT. ���N HESAP.
            sayac2=sayac2+1;      
        end
        
    elseif girilenSayilar~=fix(girilenSayilar)%SAYI ONDALIKLI �SE
        if girilenSayilar<enKucukBulma%Girilen Ondal�kl� Say�lar Aras�ndan En K���k Bulma
            enKucukBulma=girilenSayilar;
        end
        sayac4=sayac4+1;
        
        if girilenSayilar>0
            pozitifOndalikliSayi=pozitifOndalikliSayi+girilenSayilar;%POZ�T�F VE ONDALIKLI G�R�LEN SAYILARIN TOPLAMI 
            sayac3=sayac3+1;
        end
   
    else
        fprintf('\nOndal�kl� Veya Tam Say� Girin!\n\n');
        
    end  
end

pozitifOndalikliSayilarinAritmetikOrtalamasi=pozitifOndalikliSayi/sayac3;%POZ�T�F ONDALIKLI SAYILARIN AR�TMET�K ORT.
negatifTekTamSayilarinHarmonikOrtalamasi=sayac2/negatifTekTamSayiToplami;%NEGAT�F TEK TAM SAYILARIN HARMON�K ORT.
pozitifCiftTamSayilarinGeometrikOrtalamasi=nthroot(pozitifCiftTamSayi,sayac1);%POZ�T�F ��FT TAM SAYILARIN GEOMETR�K ORT.


if sayac3==0%E�ER H�� POZ�T�F ONDALIKLI SAYI G�R�LMEM��SE
    fprintf('\nG�RD���N�Z SAYILAR ARASINDA POZ�T�F ONDALIKLI SAYI MEVCUT DE��LD�R :)\n');
else
    fprintf('\nG�RD���N�Z SAYILARDAN POZ�T�F ONDALIKLI SAYILARIN AR�TMET�K ORTALAMASI: %g\n',pozitifOndalikliSayilarinAritmetikOrtalamasi);
end

if sayac2==0%E�ER H�� NEGAT�F TEK TAM SAYI G�R�LMEM��SE
    fprintf('\nG�RD���N�Z SAYILAR ARASINDA NEGAT�F TEK TAM SAYI MEVCUT DE��LD�R :)\n');
else
    fprintf('\nG�RD���N�Z SAYILARDAN NEGAT�F TEK TAM SAYILARIN HARMON�K ORTALAMASI: %g\n',negatifTekTamSayilarinHarmonikOrtalamasi);
    fprintf('\nG�RD���N�Z SAYILARDAN EN BUYUK NEGAT�F TEK TAM SAYI: %d\n',enBuyukBulma);
end

if sayac1==0%E�ER H�� POZ�T�F ��FT TAM SAYI G�R�LMEM��SE
    fprintf('\nG�RD���N�Z SAYILAR ARASINDA POZ�T�F ��FT TAM SAYI MEVCUT DE��LD�R :)\n');
else
    fprintf('\nG�RD���N�Z SAYILARDAN POZ�T�F ��FT TAM SAYILARIN GEOMETR�K ORTALAMASI: %g\n',pozitifCiftTamSayilarinGeometrikOrtalamasi);
end

if sayac4==0
    fprintf('\nG�RD���N�Z SAYILAR ARASINDA ONDALIKLI SAYI MEVCUT DE��LD�R :)\n');
else
    fprintf('\nG�RD���N�Z SAYILARDAN ONDALIKLI SAYILARIN EN K�����: %g\n',enKucukBulma);
end

if enBuyukBulma2==round(enBuyukBulma2)
    fprintf('\nG�RD���N�Z SAYILAR ARASINDAN EN B�Y�K SAYI: %d VE BU SAYI B�R TAM SAYIDIR.\n',enBuyukBulma2);
else
    fprintf('\nG�RD���N�Z SAYILAR ARASINDAK� EN B�Y�K SAYI B�R TAM SAYI DE��LD�R.\n');
end



