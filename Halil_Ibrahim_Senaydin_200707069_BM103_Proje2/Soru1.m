clear;
clc;

%Hocam 1700 yılını deneyin ve matlab programımdaki çıktıyı gözlemleyin :)
%Bu probemin çözümü için while döngüsünü kullandım. Çünkü arabanın asıl
%değerinin arabanın değer kaybetmiş halinden büyük olduğu müddetçe
%döngülere ihtiyacım var benim.

hangiYil=input('ARABANIZI ALDIĞINIZ YILI GİRİNİZ: ');
arabaDeger=100;%Örneğin arabanın fiyatı 100 olsun. Rahat işlemler için :)
arabaDegerKayipSon=70;%Arabanın fiyatı %30 değer kaybetmiş hali.

yilSayaci=hangiYil;%Yıl değerini aldıktan sonra bir sayac işlemi kullanmak için oluşturduğum değişken.
while 1==1%Sonsuz Döngü, Hatalı durum olursa tekrar yıl değeri alınır.
    if hangiYil<1769
        fprintf('\nNicholas Cugnot, Fransa’da kendi başına ilerleyebilen ilk aracı 1769 yılında yapmıştır. \nAraç üç tekerlekli ve buharla çalışan bir makinedir. İlk yapılan arabayla saatte 5 kilometre yol katedilebilmiştir.\n\n');
        hangiYil=input('Yani 1769 yılından önce arabalar yoktu :) Tekrar Yıl Girin Lütfen: ');
        fprintf('\n');
        yilSayaci=hangiYil;
        
    else
        while arabaDeger>=arabaDegerKayipSon%ARABANIN ASIL DEĞERİNİN, DEĞER KAYBETMİŞ HALİNDEN BÜYÜK OLDUĞU MÜDDETÇE ÇALIŞIR.
            if mod(yilSayaci,2)==0% YIL ÇİFT İSE
                arabaDeger=arabaDeger*(95/100);%Bir sayıyı 95/100 ile çarpmak değeri %5 azaltmak demektir.
                yilSayaci=yilSayaci+1;%Sayaci bir artırdık çünkü hangi yılda %30 değer kaybettiğini bulmak istiyoruz.
            elseif mod(yilSayaci,2)==1% YIL TEK İSE
                arabaDeger=arabaDeger*(97/100);%Bir sayıyı 97/100 ile çarpmak değeri %3 azaltmak demektir.
                yilSayaci=yilSayaci+1;
            end
        end
    break;%İlk (Sonsuz) Döngüyü Sonlandırdık.    
    end
end

fprintf('\nARABANIZI %d YILINDA ALMIŞSINIZ VE ARABANIZ %d YILINDA DEĞERİNİ %%30 KAYBEDECEK\n',hangiYil,yilSayaci);
fprintf('Arabanız değerini %d yıl sonra %%30 kaybedecek \n',(yilSayaci-hangiYil));
