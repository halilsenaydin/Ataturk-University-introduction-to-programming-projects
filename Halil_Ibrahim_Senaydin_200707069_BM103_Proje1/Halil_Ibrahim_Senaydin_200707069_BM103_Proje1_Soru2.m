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
laptopFiyati=10000;%Laptobun orijinal fiyatý
stok=500;%Laptobun stok sayýsý, deðiþken olaraak atamak istedim stok artarsa sadece deðiþkeni artýrmak yeterli olacaktýr.

laptopSayisi=input('ALMAK ÝSTEDÝÐÝNÝZ LAPTOP MÝTARINI GÝRÝNÝZ: ');%ALMAK ÝSTEDÝÐÝ LAPTOP SAYISINI KULLANICI GÝRECEK
if laptopSayisi<0%LAPTOP SAYISI 0 DAN KÜÇÜKSE KULLANICIYA BÝLGÝ VERÝLECEK VE TEKRAR GÝRÝLMESÝ ÝSTENECEK AMA BUNU YAPAMIYORUM ÇÜNKÜ PROGRAMDA DÖNGÜ KULLANMAK YASAKLANDI :(
    disp('LÜTFEN MANTIKLI BÝR SAYI GÝRÝN. - DEÐER GÝRÝLMEYECEÐÝNÝ BÝLMENÝZ GEREKÝR :)');
else
    if laptopSayisi>stok%ALINMAK ÝSTENEN LAPTOP SAYISI STOKDA YOKSA UYARI METNÝ VERÝLECEK,
        disp('GÝRDÝÐÝNÝZ MÝKTARDA LAPTOBA SAHÝP DEÐÝLÝZ. STOÐUMUZDA ÞUANLIK 500 LAPTOP VAR.');
    else
        if laptopSayisi<=100%laptop sayýsý 100 den küçükse ve 100'e eþitse normal fiyatýndan satýlacak
            fatura=laptopSayisi*laptopFiyati;
        elseif (laptopSayisi>100) && (laptopSayisi<200)%100'den sonraki her alýnan laptop için %10 iskonto uygulanacak.
            iskonto1=laptopFiyati*90/100;
            fatura=(100*laptopFiyati)+(laptopSayisi-100)*iskonto1;
                
        elseif laptopSayisi>=200%eðer laptop sayýsý 200'e eþit veya büyükse 200'den sonraki(200 dahil) her laptop için %15 iskonto uygulanacak
            iskonto1=laptopFiyati*90/100;
            iskonto2=laptopFiyati*85/100;
               
            fatura=(100*laptopFiyati)+(98*iskonto1)+((laptopSayisi-198)*iskonto2);%100 tanesi için normal fiyattan, 98 tanesi için(199-101) %10 iskonto uygulanacak,laptop_Sayisi-(198)tanesine de %15 iskonto uygulanacak.
        end
        disp(['ALDIÐIN ÜRÜNLERÝN TOPLAM FÝYATI: ',num2str(fatura),' TL DÝR.']);%Fatura ekrana yazýlýyor
        fprintf('ALIÞVERÝÞÝNÝZDE BÝZÝ TERCÝH ETTÝÐÝNÝZ ÝÇÝN TEÞEKKÜR EDERÝZ :) \n');%Teþekkür mesajýmýz :)  
   end
end
    






