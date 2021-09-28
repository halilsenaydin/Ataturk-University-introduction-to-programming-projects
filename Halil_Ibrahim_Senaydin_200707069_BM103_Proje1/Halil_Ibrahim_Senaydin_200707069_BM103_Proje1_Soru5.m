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

%deðiþkenleri deve notasyonuna göre adlandýrdým.
maas=input('MAAÞINIZI TL OLARAK GÝRÝNÝZ: ');%maas' kullanýcýdan aldýk.
if maas<0%maaþ 0 dan küçük olamaz.
    fprintf('NEGATÝF BÝR DEÐER GÝRDÝNÝZ!!!\n');
else
    if maas>=6000%maaþ 6000 den büyük veya eþitse kredi onaylanacak.
        fprintf('KREDÝ BAÞVURUNUZ ONAYLANMIÞTIR \n');
    else %deðilse kamu çalýþaný olup olmadýðý sorulacak.        
        kamu=input('KAMU PERSONELÝYSENÝZ e TUÞUNA DEÐÝLSENÝZ h TUÞUNA BASINIZ: ','s');
        if kamu=='e'|| kamu=='E'%kamu çalýþanýysa kredi onaylanýr
            fprintf('KREDÝ BAÞVURUNUZ ONAYLANMIÞTIR \n');

        elseif kamu=='h'||kamu=='H'%kamu çalýþaný deðilse kredi onaylanmaz.
            fprintf('KREDÝ BAÞVURUNUZ ONAYLANMADI, HEM MAAÞINIZ DÜÞÜK HEM DE KAMU PERSONELÝ DEÐÝLSÝNÝZ. ÜZGÜNÜM KREDÝ VEREMEM :( \n');

        else%kullanýcý e ve h tuþundan baþka bir tuþ girdiði zaman hata verecek.
            fprintf('!!! YANLIÞ TUÞLADINIZ, KAMU PERSONELÝYSENÝZ e TUÞUNA DEÐÝLSENÝZ h TUÞUNA BASINIZ !!! \n');
            %Aslýnda döngü kullansaydýk, programýn tamamýný while ile sonsuz döngüye alýrdýk.
            %else deyimine girdiði zaman tekrar deðer istenirdi diðer if elseif
            %deyimlerinde ise break ile while döngüsünü sonlandýrýrdýk. Ama
            %döngü kullanýmý yasaklandý :(
        end
    end
end




