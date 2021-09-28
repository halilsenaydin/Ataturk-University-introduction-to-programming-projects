clear;
clc;

%BEN WHİLE DÖNGÜSÜYLE YAPTIM ÇÜNKÜ KULLANICIDAN KAÇ TANE SAYI ALACAĞIMIZI
%BİLMİYORUZ. BU YÜZDEN DE SONSUZ DÖGÜ OLUŞTURARAK KULLANICIDAN DEĞERLER
%ALDIM VE KULLANICI -1 GİRDİĞİ ZAMAN DA DÖNGÜMÜ SONLANDIRDIM SONRASINDA 
%DEĞERLERİ YAZDIRDIM.

kacSayiGirildiSayaci=0;

pozitifCiftTamSayi=1;%POZİTİF ÇİFT TAM SAYI, burada 1 kullanmamızın nedeni çarpmada etkisiz eleman
sayac1=0;%Geometrik Ortalama İçin Terim Sayısı

negatifTekTamSayiToplami=0;
sayac2=0;%Harmonik Ortalama İçin Terim Sayısı

pozitifOndalikliSayi=0;
sayac3=0;%Aritmatik Ortalama İçin Terim Sayısı

sayac4=0; %Ondalıklı Sayı Girldi mi Onu bulma!

enBuyukBulma=intmin;%Negatif Tek Tam Sayı İçin!
enBuyukBulma2=intmin;%GİRİLEN TÜM DEĞERLER İÇİNDEN EN BÜYÜK BULMA!
enKucukBulma=intmax;%Ondalıklı Sayılar İçin!

while 1==1
    girilenSayilar=input('Lütfen Sayı Girin: ');
    if girilenSayilar~=-1%Eğer bu if koşulunu koymasaydım kullanıcı sadece negatif tek tam sayı girse ve -1 yazsa en büyük sayı -1 olacak, halbuki biz -1'i prgramı sonlandırmak için kullanıyoruz.
        if girilenSayilar>enBuyukBulma2%Girilen sayılar arasında en büyük bulma.
            enBuyukBulma2=girilenSayilar;
        end
    end
    kacSayiGirildiSayaci=kacSayiGirildiSayaci+1;
    
    if girilenSayilar==-1%EĞER -1 GİRİLİRSE DÖNGÜ SONA ERER AMA EĞER HİÇ SAYI GİRİLMEMİŞSE UYARI VERİR VE TEKRAR DEĞER ALIR
        if kacSayiGirildiSayaci==1%1'e eşitlememin sebebi -1 gireceği için zaten bir tane değer girmiş olur.
            fprintf('HİÇ SAYI GİRMEMİŞSİNİZ :) LÜTFEN SAYI GİRMEYİ DENEYİN!!!\n');
            kacSayiGirildiSayaci=0;%Tekrar sayacı sıfırladık.
        else   
            break;%-1 girildiği zaman sayı girilmişse önceden program sonlanır.
        end
        
    elseif girilenSayilar==fix(girilenSayilar)%SAYI TAM SAYI İSE
        if girilenSayilar>0 && mod(girilenSayilar,2)==0%SAYI ÇİFT VE POZİTİF İSE
            pozitifCiftTamSayi=pozitifCiftTamSayi*girilenSayilar;%GİRİLEN POZİTİF VE ÇİFT TAM SAYILARIN ÇARPIMI, GEOMETRİK ORT. İÇİN
            sayac1=sayac1+1;
            
        elseif girilenSayilar<0 && mod(girilenSayilar,2)==1%SAYI NEGATİF VE TEK İSE
            if girilenSayilar>enBuyukBulma%Negatif Tek Tam Sayılar Arasında En Büyük Bulma
                enBuyukBulma=girilenSayilar;
            end
                      
            negatifTekTamSayiToplami=negatifTekTamSayiToplami+(1/girilenSayilar);%HARMONİK ORT. İÇİN HESAP.
            sayac2=sayac2+1;      
        end
        
    elseif girilenSayilar~=fix(girilenSayilar)%SAYI ONDALIKLI İSE
        if girilenSayilar<enKucukBulma%Girilen Ondalıklı Sayılar Arasından En Küçük Bulma
            enKucukBulma=girilenSayilar;
        end
        sayac4=sayac4+1;
        
        if girilenSayilar>0
            pozitifOndalikliSayi=pozitifOndalikliSayi+girilenSayilar;%POZİTİF VE ONDALIKLI GİRİLEN SAYILARIN TOPLAMI 
            sayac3=sayac3+1;
        end
   
    else
        fprintf('\nOndalıklı Veya Tam Sayı Girin!\n\n');
        
    end  
end

pozitifOndalikliSayilarinAritmetikOrtalamasi=pozitifOndalikliSayi/sayac3;%POZİTİF ONDALIKLI SAYILARIN ARİTMETİK ORT.
negatifTekTamSayilarinHarmonikOrtalamasi=sayac2/negatifTekTamSayiToplami;%NEGATİF TEK TAM SAYILARIN HARMONİK ORT.
pozitifCiftTamSayilarinGeometrikOrtalamasi=nthroot(pozitifCiftTamSayi,sayac1);%POZİTİF ÇİFT TAM SAYILARIN GEOMETRİK ORT.


if sayac3==0%EĞER HİÇ POZİTİF ONDALIKLI SAYI GİRİLMEMİŞSE
    fprintf('\nGİRDİĞİNİZ SAYILAR ARASINDA POZİTİF ONDALIKLI SAYI MEVCUT DEĞİLDİR :)\n');
else
    fprintf('\nGİRDİĞİNİZ SAYILARDAN POZİTİF ONDALIKLI SAYILARIN ARİTMETİK ORTALAMASI: %g\n',pozitifOndalikliSayilarinAritmetikOrtalamasi);
end

if sayac2==0%EĞER HİÇ NEGATİF TEK TAM SAYI GİRİLMEMİŞSE
    fprintf('\nGİRDİĞİNİZ SAYILAR ARASINDA NEGATİF TEK TAM SAYI MEVCUT DEĞİLDİR :)\n');
else
    fprintf('\nGİRDİĞİNİZ SAYILARDAN NEGATİF TEK TAM SAYILARIN HARMONİK ORTALAMASI: %g\n',negatifTekTamSayilarinHarmonikOrtalamasi);
    fprintf('\nGİRDİĞİNİZ SAYILARDAN EN BUYUK NEGATİF TEK TAM SAYI: %d\n',enBuyukBulma);
end

if sayac1==0%EĞER HİÇ POZİTİF ÇİFT TAM SAYI GİRİLMEMİŞSE
    fprintf('\nGİRDİĞİNİZ SAYILAR ARASINDA POZİTİF ÇİFT TAM SAYI MEVCUT DEĞİLDİR :)\n');
else
    fprintf('\nGİRDİĞİNİZ SAYILARDAN POZİTİF ÇİFT TAM SAYILARIN GEOMETRİK ORTALAMASI: %g\n',pozitifCiftTamSayilarinGeometrikOrtalamasi);
end

if sayac4==0
    fprintf('\nGİRDİĞİNİZ SAYILAR ARASINDA ONDALIKLI SAYI MEVCUT DEĞİLDİR :)\n');
else
    fprintf('\nGİRDİĞİNİZ SAYILARDAN ONDALIKLI SAYILARIN EN KÜÇÜĞÜ: %g\n',enKucukBulma);
end

if enBuyukBulma2==round(enBuyukBulma2)
    fprintf('\nGİRDİĞİNİZ SAYILAR ARASINDAN EN BÜYÜK SAYI: %d VE BU SAYI BİR TAM SAYIDIR.\n',enBuyukBulma2);
else
    fprintf('\nGİRDİĞİNİZ SAYILAR ARASINDAKİ EN BÜYÜK SAYI BİR TAM SAYI DEĞİLDİR.\n');
end



