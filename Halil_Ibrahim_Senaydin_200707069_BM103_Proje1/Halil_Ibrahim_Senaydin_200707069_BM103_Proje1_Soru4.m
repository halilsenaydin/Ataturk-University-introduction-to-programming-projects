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
x1=input('x1 deðerini giriniz: ');
x2=input('x2 deðerini giriniz: ');
x3=input('x3 deðerini giriniz: ');

if x1==-1 || x2==-1 || x3==-1%örneðin 1/x1+1 de x1=-1 için payda=0 olur ve ifade tanýmsýzdýr.
    disp('x1=-1 veya x2=-1 veya x3=-1 için payda=0 hatasý olur!!! Lütfen baþka deðer girerek deneyin :)');
elseif nthroot(1/x1+1/x2+1/x3,2/3)==0%Ýllaki x1,x2 ve x deðerleri için payda=0 saðlayan deðerler vardýr!!!
    disp('Payda=0 hatasý var.');
else
    kKkareSkor=9/nthroot(1/x1+1/x2+1/x3,2/3);
    disp(['x1,x2 ve x3 deðerlerinin k^2 skoru: ',num2str(kKkareSkor)]);
end





