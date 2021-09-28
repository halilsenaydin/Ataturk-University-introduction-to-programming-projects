clear;
clc;

fprintf('PROGRAMI ÇALIŞTIRDIĞINIZ İÇİN TEŞEKKÜR EDERİM :) \n');
%değişkenleri deve notasyonuna göre adlandırdım.
laptopFiyati=10000;%Laptobun orijinal fiyatı
stok=500;%Laptobun stok sayısı, değişken olaraak atamak istedim stok artarsa sadece değişkeni artırmak yeterli olacaktır.

laptopSayisi=input('ALMAK İSTEDİĞİNİZ LAPTOP MİTARINI GİRİNİZ: ');%ALMAK İSTEDİĞİ LAPTOP SAYISINI KULLANICI GİRECEK
if laptopSayisi<0%LAPTOP SAYISI 0 DAN KÜÇÜKSE KULLANICIYA BİLGİ VERİLECEK VE TEKRAR GİRİLMESİ İSTENECEK AMA BUNU YAPAMIYORUM ÇÜNKÜ PROGRAMDA DÖNGÜ KULLANMAK YASAKLANDI :(
    disp('LÜTFEN MANTIKLI BİR SAYI GİRİN. - DEĞER GİRİLMEYECEĞİNİ BİLMENİZ GEREKİR :)');
else
    if laptopSayisi>stok%ALINMAK İSTENEN LAPTOP SAYISI STOKDA YOKSA UYARI METNİ VERİLECEK,
        disp('GİRDİĞİNİZ MİKTARDA LAPTOBA SAHİP DEĞİLİZ. STOĞUMUZDA ŞUANLIK 500 LAPTOP VAR.');
    else
        if laptopSayisi<=100%laptop sayısı 100 den küçükse ve 100'e eşitse normal fiyatından satılacak
            fatura=laptopSayisi*laptopFiyati;
        elseif (laptopSayisi>100) && (laptopSayisi<200)%100'den sonraki her alınan laptop için %10 iskonto uygulanacak.
            iskonto1=laptopFiyati*90/100;
            fatura=(100*laptopFiyati)+(laptopSayisi-100)*iskonto1;
                
        elseif laptopSayisi>=200%eğer laptop sayısı 200'e eşit veya büyükse 200'den sonraki(200 dahil) her laptop için %15 iskonto uygulanacak
            iskonto1=laptopFiyati*90/100;
            iskonto2=laptopFiyati*85/100;
               
            fatura=(100*laptopFiyati)+(98*iskonto1)+((laptopSayisi-198)*iskonto2);%100 tanesi için normal fiyattan, 98 tanesi için(199-101) %10 iskonto uygulanacak,laptop_Sayisi-(198)tanesine de %15 iskonto uygulanacak.
        end
        disp(['ALDIĞIN ÜRÜNLERİN TOPLAM FİYATI: ',num2str(fatura),' TL DİR.']);%Fatura ekrana yazılıyor
        fprintf('ALIŞVERİŞİNİZDE BİZİ TERCİH ETTİĞİNİZ İÇİN TEŞEKKÜR EDERİZ :) \n');%Teşekkür mesajımız :)  
   end
end
    






