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

%de�i�kenleri deve notasyonuna g�re adland�rd�m.
maas=input('MAA�INIZI TL OLARAK G�R�N�Z: ');%maas' kullan�c�dan ald�k.
if maas<0%maa� 0 dan k���k olamaz.
    fprintf('NEGAT�F B�R DE�ER G�RD�N�Z!!!\n');
else
    if maas>=6000%maa� 6000 den b�y�k veya e�itse kredi onaylanacak.
        fprintf('KRED� BA�VURUNUZ ONAYLANMI�TIR \n');
    else %de�ilse kamu �al��an� olup olmad��� sorulacak.        
        kamu=input('KAMU PERSONEL�YSEN�Z e TU�UNA DE��LSEN�Z h TU�UNA BASINIZ: ','s');
        if kamu=='e'|| kamu=='E'%kamu �al��an�ysa kredi onaylan�r
            fprintf('KRED� BA�VURUNUZ ONAYLANMI�TIR \n');

        elseif kamu=='h'||kamu=='H'%kamu �al��an� de�ilse kredi onaylanmaz.
            fprintf('KRED� BA�VURUNUZ ONAYLANMADI, HEM MAA�INIZ D���K HEM DE KAMU PERSONEL� DE��LS�N�Z. �ZG�N�M KRED� VEREMEM :( \n');

        else%kullan�c� e ve h tu�undan ba�ka bir tu� girdi�i zaman hata verecek.
            fprintf('!!! YANLI� TU�LADINIZ, KAMU PERSONEL�YSEN�Z e TU�UNA DE��LSEN�Z h TU�UNA BASINIZ !!! \n');
            %Asl�nda d�ng� kullansayd�k, program�n tamam�n� while ile sonsuz d�ng�ye al�rd�k.
            %else deyimine girdi�i zaman tekrar de�er istenirdi di�er if elseif
            %deyimlerinde ise break ile while d�ng�s�n� sonland�r�rd�k. Ama
            %d�ng� kullan�m� yasakland� :(
        end
    end
end




