clear;
clc;
fprintf('PROGRAMI ÇALIŞTIRDIĞINIZ İÇİN TEŞEKKÜR EDERİM :) \n');
%değişkenleri deve notasyonuna göre adlandırdım.

sayi1=input('1. SAYIYI GİRİNİZ: ');
enBuyuk=sayi1;%1.sayıyı en büyük ilan ettim
enKucuk=sayi1;%1.sayıyı en küçük de ilan ettim

sayi2=input('2. SAYIYI GİRİNİZ: ');
if sayi2>enBuyuk%eğer 2. sayı enBuyuk'den büyükse 2. sayı en büyük olur.
    enBuyuk=sayi2;
    %enKucuk=sayi1; %Burada sayi2>sayi1 olduğuna göre enKucuk sayıda sayi1
                    %olmuş oluyor. Yukarıdaki notda bahsettiğim gibi onu burada kullanamadım
elseif sayi2<enKucuk
    enKucuk=sayi2;
end

sayi3=input('3. SAYIYI GİRİNİZ: ');
if sayi3>enBuyuk%eğer 3. sayı enBuyuk'den büyükse 3. sayı en büyük olur.
    enBuyuk=sayi3;
elseif sayi3<enKucuk%eğer 3.sayı enKucuk'den küçükse 3.sayı en küçük olur.
    enKucuk=sayi3;
end


sayi4=input('4. SAYIYI GİRİNİZ: ');
if sayi4>enBuyuk%eğer 4. sayı enBuyuk'den büyükse 4. sayı en büyük olur.
    enBuyuk=sayi4;
elseif sayi4<enKucuk%eğer 4.sayı enKucuk'den küçükse 4.sayı en küçük olur.
    enKucuk=sayi4;
end

sayi5=input('5. SAYIYI GİRİNİZ: ');
if sayi5>enBuyuk%eğer 5. sayı enBuyuk'den büyükse 5. sayı en büyük olur.
    enBuyuk=sayi5;
elseif sayi5<enKucuk%eğer 5.sayı enKucuk'den küçükse 5.sayı en küçük olur.
    enKucuk=sayi5;
end

sayi6=input('6. SAYIYI GİRİNİZ: ');
if sayi6>enBuyuk%eğer 6. sayı enBuyuk'den büyükse 6. sayı en büyük olur.
    enBuyuk=sayi6;
elseif sayi6<enKucuk%eğer 6.sayı enKucuk'den küçükse 6.sayı en küçük olur.
    enKucuk=sayi6;
end

fark=abs(enBuyuk-enKucuk);
bolum=abs(enBuyuk/enKucuk);

fprintf('Girdiğiniz sayılardan en büyük sayı ile en küçük sayı arasındaki fark: %g\n',fark);

if enKucuk==0%en küçük sayı 0 ise tanımsız olur !!! bolum değişkeni Inf olarak döndürür.
    fprintf('EN BÜYÜK SAYI İLE EN KÜÇÜK SAYININ BÖLÜMLERİ TANIMSIZDIR.\nEn küçük sayı 0 olur ve payda=0 olacağından ifade tanımsız olur!!\n');
else
    fprintf('Girdiğiniz sayılardan en büyük sayı ile en küçük sayının bölümü: %g\n',bolum);
end





