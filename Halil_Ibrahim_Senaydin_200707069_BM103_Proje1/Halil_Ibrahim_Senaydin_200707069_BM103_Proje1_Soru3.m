%ADI: HAL�L �BRAH�M
%SOYADI: �ENAYDIN
%��RENC� NO: 200707069
%B�L�M: B�LG�SAYAR M�HEND�SL��� B�L�M�
%DERS�N ADI VE DERS�N KODU: PROGRAMLAMAYA G�R�� - BIM-103-50-50
%DERS�N VER�LD��� AKADEM�K D�NEM: 2020-2021 E��T�M ��RET�M YILI 1.YARIYIL
%PROJEN�N NUMARASI: PROJE 1
%DERS� VEREN ��RET�M �YES�N�N ADI: TOLGA AYDIN

clear;
clc;
fprintf('PROGRAMI �ALI�TIRDI�INIZ ���N TE�EKK�R EDER�M :) \n');
%de�i�kenleri deve notasyonuna g�re adland�rd�m.
sayi1=input('1. SAYIYI G�R�N�Z: ');
enBuyuk=sayi1;%1.say�y� en b�y�k ilan ettim
enKucuk=sayi1;%1.say�y� en k���k de ilan ettim
%NOT: HOCAM BURADA enKucuk de�i�kenini asl�na ilk if deyiminde yapacakt�m
%Ama sadece orada tan�mland��� i�in di�er if deyimleri onu g�remedi.
%global() fonksiyonunu kullanay�m dedim ama MATLAB'de san�r�m kullan�m�
%farkl�. Ben python ile kullan�m� ayn� sand�m ama de�ilmi�.

sayi2=input('2. SAYIYI G�R�N�Z: ');
if sayi2>enBuyuk%e�er 2. say� enBuyuk'den b�y�kse 2. say� en b�y�k olur.
    enBuyuk=sayi2;
    %enKucuk=sayi1; %Burada sayi2>sayi1 oldu�una g�re enKucuk say�da sayi1
                    %olmu� oluyor. Yukar�daki notda bahsetti�im gibi onu burada kullanamad�m
elseif sayi2<enKucuk
    enKucuk=sayi2;
end

sayi3=input('3. SAYIYI G�R�N�Z: ');
if sayi3>enBuyuk%e�er 3. say� enBuyuk'den b�y�kse 3. say� en b�y�k olur.
    enBuyuk=sayi3;
elseif sayi3<enKucuk%e�er 3.say� enKucuk'den k���kse 3.say� en k���k olur.
    enKucuk=sayi3;
end


sayi4=input('4. SAYIYI G�R�N�Z: ');
if sayi4>enBuyuk%e�er 4. say� enBuyuk'den b�y�kse 4. say� en b�y�k olur.
    enBuyuk=sayi4;
elseif sayi4<enKucuk%e�er 4.say� enKucuk'den k���kse 4.say� en k���k olur.
    enKucuk=sayi4;
end

sayi5=input('5. SAYIYI G�R�N�Z: ');
if sayi5>enBuyuk%e�er 5. say� enBuyuk'den b�y�kse 5. say� en b�y�k olur.
    enBuyuk=sayi5;
elseif sayi5<enKucuk%e�er 5.say� enKucuk'den k���kse 5.say� en k���k olur.
    enKucuk=sayi5;
end

sayi6=input('6. SAYIYI G�R�N�Z: ');
if sayi6>enBuyuk%e�er 6. say� enBuyuk'den b�y�kse 6. say� en b�y�k olur.
    enBuyuk=sayi6;
elseif sayi6<enKucuk%e�er 6.say� enKucuk'den k���kse 6.say� en k���k olur.
    enKucuk=sayi6;
end

fark=abs(enBuyuk-enKucuk);
bolum=abs(enBuyuk/enKucuk);

fprintf('Girdi�iniz say�lardan en b�y�k say� ile en k���k say� aras�ndaki fark: %g\n',fark);

if enKucuk==0%en k���k say� 0 ise tan�ms�z olur !!! bolum de�i�keni Inf olarak d�nd�r�r.
    fprintf('EN B�Y�K SAYI �LE EN K���K SAYININ B�L�MLER� TANIMSIZDIR.\nEn k���k say� 0 olur ve payda=0 olaca��ndan ifade tan�ms�z olur!!\n');
else
    fprintf('Girdi�iniz say�lardan en b�y�k say� ile en k���k say�n�n b�l�m�: %g\n',bolum);
end





