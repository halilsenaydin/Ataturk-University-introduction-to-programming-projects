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
laptopFiyati=10000;%Laptobun orijinal fiyat�
stok=500;%Laptobun stok say�s�, de�i�ken olaraak atamak istedim stok artarsa sadece de�i�keni art�rmak yeterli olacakt�r.

laptopSayisi=input('ALMAK �STED���N�Z LAPTOP M�TARINI G�R�N�Z: ');%ALMAK �STED��� LAPTOP SAYISINI KULLANICI G�RECEK
if laptopSayisi<0%LAPTOP SAYISI 0 DAN K���KSE KULLANICIYA B�LG� VER�LECEK VE TEKRAR G�R�LMES� �STENECEK AMA BUNU YAPAMIYORUM ��NK� PROGRAMDA D�NG� KULLANMAK YASAKLANDI :(
    disp('L�TFEN MANTIKLI B�R SAYI G�R�N. - DE�ER G�R�LMEYECE��N� B�LMEN�Z GEREK�R :)');
else
    if laptopSayisi>stok%ALINMAK �STENEN LAPTOP SAYISI STOKDA YOKSA UYARI METN� VER�LECEK,
        disp('G�RD���N�Z M�KTARDA LAPTOBA SAH�P DE��L�Z. STO�UMUZDA �UANLIK 500 LAPTOP VAR.');
    else
        if laptopSayisi<=100%laptop say�s� 100 den k���kse ve 100'e e�itse normal fiyat�ndan sat�lacak
            fatura=laptopSayisi*laptopFiyati;
        elseif (laptopSayisi>100) && (laptopSayisi<200)%100'den sonraki her al�nan laptop i�in %10 iskonto uygulanacak.
            iskonto1=laptopFiyati*90/100;
            fatura=(100*laptopFiyati)+(laptopSayisi-100)*iskonto1;
                
        elseif laptopSayisi>=200%e�er laptop say�s� 200'e e�it veya b�y�kse 200'den sonraki(200 dahil) her laptop i�in %15 iskonto uygulanacak
            iskonto1=laptopFiyati*90/100;
            iskonto2=laptopFiyati*85/100;
               
            fatura=(100*laptopFiyati)+(98*iskonto1)+((laptopSayisi-198)*iskonto2);%100 tanesi i�in normal fiyattan, 98 tanesi i�in(199-101) %10 iskonto uygulanacak,laptop_Sayisi-(198)tanesine de %15 iskonto uygulanacak.
        end
        disp(['ALDI�IN �R�NLER�N TOPLAM F�YATI: ',num2str(fatura),' TL D�R.']);%Fatura ekrana yaz�l�yor
        fprintf('ALI�VER���N�ZDE B�Z� TERC�H ETT���N�Z ���N TE�EKK�R EDER�Z :) \n');%Te�ekk�r mesaj�m�z :)  
   end
end
    






