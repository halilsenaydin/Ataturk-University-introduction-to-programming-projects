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

fprintf('\n');
faktoriyel=1;%�arpmada etkisiz eleman 1'dir.

while 1==1%SONSUZ D�NG� HATALAR ���N, HATA OLURSA TEKRAR DE�ER �STER�M.
    sayi=input('POZ�T�F B�R TAM SAYI G�R�N: ');
    
    if (sayi>0) && (sayi==round(sayi))%G�R�LEN SAYI POZ�T�F VE TAM SAYI �SE
        if sayi==1 || sayi==2%Girilen say� 1 veya 2 veya ise faktoriyel hesaplayamay�z. 1 girerse 0 �ift ama 5 ile tam b�l�n�r.
            fprintf('G�RD���N�Z SAYIDAN K���K VE 5 �LE TAM B�L�NMEYEN BU SAYININ FAKTOR�YEL� ALINMAZ!\n');  
        else
            for i=sayi-1:-1:1%G�R�LEN SAYIDAN K���K OLAN SAYILARI TEK TEK GEZER.

                if mod(i,2)==0 && mod(i,5)~=0
                    sayi2=i;%Bulunan say�y� ba�ka bir de�i�kene e�itledim.
                    for j=1:i%BULUNAN SAYININ FAKTOR�YEL� ALINIR.
                        faktoriyel=faktoriyel*j;
                    end
                    break;%ARANAN KAN BULUNDU :) YAN� HEM ��FT HEM DE 5 �LE B�L�NMEYEN SAYI BULUNDU, FAKTOR�YEL� ALINDI VE B�T�RD�K
                end      

            end
            break;%T�M HATALAR TESP�T ED�LD� VE TEKRAR DE�ER ALINDI. SORUN OLMADI�I TAKD�RDE D�G�Y� SONLANDIRIR.
        end
    
    else
        fprintf('G�RD���N�Z SAYI POZ�T�F B�R TAM SAYI DE��L!!!\n\n');
    end
end

fprintf('G�RD���N�Z SAYIDAN K���K VE ONA EN YAKIN 5 �LE TAM B�L�NEMEYEN VE ��FT OLAN SAYI: %d, BU SAYININ FAKT�R�YEL�: %g\n',sayi2,faktoriyel);

