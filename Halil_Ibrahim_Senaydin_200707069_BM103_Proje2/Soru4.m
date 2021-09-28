clear;
clc;

fprintf('\n');
faktoriyel=1;%Çarpmada etkisiz eleman 1'dir.

while 1==1%SONSUZ DÖNGÜ HATALAR İÇİN, HATA OLURSA TEKRAR DEĞER İSTERİM.
    sayi=input('POZİTİF BİR TAM SAYI GİRİN: ');
    
    if (sayi>0) && (sayi==round(sayi))%GİRİLEN SAYI POZİTİF VE TAM SAYI İSE
        if sayi==1 || sayi==2%Girilen sayı 1 veya 2 veya ise faktoriyel hesaplayamayız. 1 girerse 0 çift ama 5 ile tam bölünür.
            fprintf('GİRDİĞİNİZ SAYIDAN KÜÇÜK VE 5 İLE TAM BÖLÜNMEYEN BU SAYININ FAKTORİYELİ ALINMAZ!\n');  
        else
            for i=sayi-1:-1:1%GİRİLEN SAYIDAN KÜÇÜK OLAN SAYILARI TEK TEK GEZER.

                if mod(i,2)==0 && mod(i,5)~=0
                    sayi2=i;%Bulunan sayıyı başka bir değişkene eşitledim.
                    for j=1:i%BULUNAN SAYININ FAKTORİYELİ ALINIR.
                        faktoriyel=faktoriyel*j;
                    end
                    break;%ARANAN KAN BULUNDU :) YANİ HEM ÇİFT HEM DE 5 İLE BÖLÜNMEYEN SAYI BULUNDU, FAKTORİYELİ ALINDI VE BİTİRDİK
                end      

            end
            break;%TÜM HATALAR TESPİT EDİLDİ VE TEKRAR DEĞER ALINDI. SORUN OLMADIĞI TAKDİRDE DÖGÜYÜ SONLANDIRIR.
        end
    
    else
        fprintf('GİRDİĞİNİZ SAYI POZİTİF BİR TAM SAYI DEĞİL!!!\n\n');
    end
end

fprintf('GİRDİĞİNİZ SAYIDAN KÜÇÜK VE ONA EN YAKIN 5 İLE TAM BÖLÜNEMEYEN VE ÇİFT OLAN SAYI: %d, BU SAYININ FAKTÖRİYELİ: %g\n',sayi2,faktoriyel);

