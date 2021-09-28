%ADI: HALÝL ÝBRAHÝM
%SOYADI: ÞENAYDIN
%ÖÐRENCÝ NO: 200707069
%BÖLÜM: BÝLGÝSAYAR MÜHENDÝSLÝÐÝ BÖLÜMÜ
%DERSÝN ADI VE DERSÝN KODU: PROGRAMLAMAYA GÝRÝÞ - BIM-103-50-50
%DERSÝN VERÝLDÝÐÝ AKADEMÝK DÖNEM: 2020-2021 EÐÝTÝM ÖÐRETÝM YILI 1.YARIYIL
%PROJENÝN NUMARASI: PROJE 1
%DERSÝ VEREN ÖÐRETÝM ÜYESÝNÝN ADI: TOLGA AYDIN

clear;
clc;
fprintf('PROGRAMI ÇALIÞTIRDIÐINIZ ÝÇÝN TEÞEKKÜR EDERÝM :) \n');
%deðiþkenleri deve notasyonuna göre adlandýrdým.
sayi1=input('1. SAYIYI GÝRÝNÝZ: ');
enBuyuk=sayi1;%1.sayýyý en büyük ilan ettim
enKucuk=sayi1;%1.sayýyý en küçük de ilan ettim
%NOT: HOCAM BURADA enKucuk deðiþkenini aslýna ilk if deyiminde yapacaktým
%Ama sadece orada tanýmlandýðý için diðer if deyimleri onu göremedi.
%global() fonksiyonunu kullanayým dedim ama MATLAB'de sanýrým kullanýmý
%farklý. Ben python ile kullanýmý ayný sandým ama deðilmiþ.

sayi2=input('2. SAYIYI GÝRÝNÝZ: ');
if sayi2>enBuyuk%eðer 2. sayý enBuyuk'den büyükse 2. sayý en büyük olur.
    enBuyuk=sayi2;
    %enKucuk=sayi1; %Burada sayi2>sayi1 olduðuna göre enKucuk sayýda sayi1
                    %olmuþ oluyor. Yukarýdaki notda bahsettiðim gibi onu burada kullanamadým
elseif sayi2<enKucuk
    enKucuk=sayi2;
end

sayi3=input('3. SAYIYI GÝRÝNÝZ: ');
if sayi3>enBuyuk%eðer 3. sayý enBuyuk'den büyükse 3. sayý en büyük olur.
    enBuyuk=sayi3;
elseif sayi3<enKucuk%eðer 3.sayý enKucuk'den küçükse 3.sayý en küçük olur.
    enKucuk=sayi3;
end


sayi4=input('4. SAYIYI GÝRÝNÝZ: ');
if sayi4>enBuyuk%eðer 4. sayý enBuyuk'den büyükse 4. sayý en büyük olur.
    enBuyuk=sayi4;
elseif sayi4<enKucuk%eðer 4.sayý enKucuk'den küçükse 4.sayý en küçük olur.
    enKucuk=sayi4;
end

sayi5=input('5. SAYIYI GÝRÝNÝZ: ');
if sayi5>enBuyuk%eðer 5. sayý enBuyuk'den büyükse 5. sayý en büyük olur.
    enBuyuk=sayi5;
elseif sayi5<enKucuk%eðer 5.sayý enKucuk'den küçükse 5.sayý en küçük olur.
    enKucuk=sayi5;
end

sayi6=input('6. SAYIYI GÝRÝNÝZ: ');
if sayi6>enBuyuk%eðer 6. sayý enBuyuk'den büyükse 6. sayý en büyük olur.
    enBuyuk=sayi6;
elseif sayi6<enKucuk%eðer 6.sayý enKucuk'den küçükse 6.sayý en küçük olur.
    enKucuk=sayi6;
end

fark=abs(enBuyuk-enKucuk);
bolum=abs(enBuyuk/enKucuk);

fprintf('Girdiðiniz sayýlardan en büyük sayý ile en küçük sayý arasýndaki fark: %g\n',fark);

if enKucuk==0%en küçük sayý 0 ise tanýmsýz olur !!! bolum deðiþkeni Inf olarak döndürür.
    fprintf('EN BÜYÜK SAYI ÝLE EN KÜÇÜK SAYININ BÖLÜMLERÝ TANIMSIZDIR.\nEn küçük sayý 0 olur ve payda=0 olacaðýndan ifade tanýmsýz olur!!\n');
else
    fprintf('Girdiðiniz sayýlardan en büyük sayý ile en küçük sayýnýn bölümü: %g\n',bolum);
end





