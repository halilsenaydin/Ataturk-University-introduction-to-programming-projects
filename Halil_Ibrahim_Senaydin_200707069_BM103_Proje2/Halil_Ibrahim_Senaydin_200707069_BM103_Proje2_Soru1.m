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

%Hocam 1700 yýlýný deneyin ve matlab programýmdaki çýktýyý gözlemleyin :)
%Bu probemin çözümü için while döngüsünü kullandým. Çünkü arabanýn asýl
%deðerinin arabanýn deðer kaybetmiþ halinden büyük olduðu müddetçe
%döngülere ihtiyacým var benim.

hangiYil=input('ARABANIZI ALDIÐINIZ YILI GÝRÝNÝZ: ');
arabaDeger=100;%Örneðin arabanýn fiyatý 100 olsun. Rahat iþlemler için :)
arabaDegerKayipSon=70;%Arabanýn fiyatý %30 deðer kaybetmiþ hali.

yilSayaci=hangiYil;%Yýl deðerini aldýktan sonra bir sayac iþlemi kullanmak için oluþturduðum deðiþken.
while 1==1%Sonsuz Döngü, Hatalý durum olursa tekrar yýl deðeri alýnýr.
    if hangiYil<1769
        fprintf('\nNicholas Cugnot, Fransa’da kendi baþýna ilerleyebilen ilk aracý 1769 yýlýnda yapmýþtýr. \nAraç üç tekerlekli ve buharla çalýþan bir makinedir. Ýlk yapýlan arabayla saatte 5 kilometre yol katedilebilmiþtir.\n\n');
        hangiYil=input('Yani 1769 yýlýndan önce arabalar yoktu :) Tekrar Yýl Girin Lütfen: ');
        fprintf('\n');
        yilSayaci=hangiYil;
        
    else
        while arabaDeger>=arabaDegerKayipSon%ARABANIN ASIL DEÐERÝNÝN, DEÐER KAYBETMÝÞ HALÝNDEN BÜYÜK OLDUÐU MÜDDETÇE ÇALIÞIR.
            if mod(yilSayaci,2)==0% YIL ÇÝFT ÝSE
                arabaDeger=arabaDeger*(95/100);%Bir sayýyý 95/100 ile çarpmak deðeri %5 azaltmak demektir.
                yilSayaci=yilSayaci+1;%Sayaci bir artýrdýk çünkü hangi yýlda %30 deðer kaybettiðini bulmak istiyoruz.
            elseif mod(yilSayaci,2)==1% YIL TEK ÝSE
                arabaDeger=arabaDeger*(97/100);%Bir sayýyý 97/100 ile çarpmak deðeri %3 azaltmak demektir.
                yilSayaci=yilSayaci+1;
            end
        end
    break;%Ýlk (Sonsuz) Döngüyü Sonlandýrdýk.    
    end
end

fprintf('\nARABANIZI %d YILINDA ALMIÞSINIZ VE ARABANIZ %d YILINDA DEÐERÝNÝ %%30 KAYBEDECEK\n',hangiYil,yilSayaci);
fprintf('Arabanýz deðerini %d yýl sonra %%30 kaybedecek \n',(yilSayaci-hangiYil));
