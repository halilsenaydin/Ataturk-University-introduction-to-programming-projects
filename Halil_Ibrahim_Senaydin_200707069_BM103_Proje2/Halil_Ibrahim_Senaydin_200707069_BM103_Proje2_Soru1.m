%ADI: HAL�L �BRAH�M
%SOYADI: �ENAYDIN
%��RENC� NO: 200707069
%B�L�M: B�LG�SAYAR M�HEND�SL��� B�L�M�
%DERS�N ADI VE DERS�N KODU: PROGRAMLAMAYA G�R�� - BIM-103-50-50
%DERS�N VER�LD��� AKADEM�K D�NEM: 2020-2021 E��T�M ��RET�M YILI 1.YARIYIL
%PROJEN�N NUMARASI: PROJE 2
%DERS� VEREN ��RET�M �YES�N�N ADI: TOLGA AYDIN

clear;
clc;

%Hocam 1700 y�l�n� deneyin ve matlab program�mdaki ��kt�y� g�zlemleyin :)
%Bu probemin ��z�m� i�in while d�ng�s�n� kulland�m. ��nk� araban�n as�l
%de�erinin araban�n de�er kaybetmi� halinden b�y�k oldu�u m�ddet�e
%d�ng�lere ihtiyac�m var benim.

hangiYil=input('ARABANIZI ALDI�INIZ YILI G�R�N�Z: ');
arabaDeger=100;%�rne�in araban�n fiyat� 100 olsun. Rahat i�lemler i�in :)
arabaDegerKayipSon=70;%Araban�n fiyat� %30 de�er kaybetmi� hali.

yilSayaci=hangiYil;%Y�l de�erini ald�ktan sonra bir sayac i�lemi kullanmak i�in olu�turdu�um de�i�ken.
while 1==1%Sonsuz D�ng�, Hatal� durum olursa tekrar y�l de�eri al�n�r.
    if hangiYil<1769
        fprintf('\nNicholas Cugnot, Fransa�da kendi ba��na ilerleyebilen ilk arac� 1769 y�l�nda yapm��t�r. \nAra� �� tekerlekli ve buharla �al��an bir makinedir. �lk yap�lan arabayla saatte 5 kilometre yol katedilebilmi�tir.\n\n');
        hangiYil=input('Yani 1769 y�l�ndan �nce arabalar yoktu :) Tekrar Y�l Girin L�tfen: ');
        fprintf('\n');
        yilSayaci=hangiYil;
        
    else
        while arabaDeger>=arabaDegerKayipSon%ARABANIN ASIL DE�ER�N�N, DE�ER KAYBETM�� HAL�NDEN B�Y�K OLDU�U M�DDET�E �ALI�IR.
            if mod(yilSayaci,2)==0% YIL ��FT �SE
                arabaDeger=arabaDeger*(95/100);%Bir say�y� 95/100 ile �arpmak de�eri %5 azaltmak demektir.
                yilSayaci=yilSayaci+1;%Sayaci bir art�rd�k ��nk� hangi y�lda %30 de�er kaybetti�ini bulmak istiyoruz.
            elseif mod(yilSayaci,2)==1% YIL TEK �SE
                arabaDeger=arabaDeger*(97/100);%Bir say�y� 97/100 ile �arpmak de�eri %3 azaltmak demektir.
                yilSayaci=yilSayaci+1;
            end
        end
    break;%�lk (Sonsuz) D�ng�y� Sonland�rd�k.    
    end
end

fprintf('\nARABANIZI %d YILINDA ALMI�SINIZ VE ARABANIZ %d YILINDA DE�ER�N� %%30 KAYBEDECEK\n',hangiYil,yilSayaci);
fprintf('Araban�z de�erini %d y�l sonra %%30 kaybedecek \n',(yilSayaci-hangiYil));
