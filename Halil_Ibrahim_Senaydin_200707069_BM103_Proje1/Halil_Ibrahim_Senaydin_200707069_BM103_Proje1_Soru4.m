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
x1=input('x1 de�erini giriniz: ');
x2=input('x2 de�erini giriniz: ');
x3=input('x3 de�erini giriniz: ');

if x1==-1 || x2==-1 || x3==-1%�rne�in 1/x1+1 de x1=-1 i�in payda=0 olur ve ifade tan�ms�zd�r.
    disp('x1=-1 veya x2=-1 veya x3=-1 i�in payda=0 hatas� olur!!! L�tfen ba�ka de�er girerek deneyin :)');
elseif nthroot(1/x1+1/x2+1/x3,2/3)==0%�llaki x1,x2 ve x de�erleri i�in payda=0 sa�layan de�erler vard�r!!!
    disp('Payda=0 hatas� var.');
else
    kKkareSkor=9/nthroot(1/x1+1/x2+1/x3,2/3);
    disp(['x1,x2 ve x3 de�erlerinin k^2 skoru: ',num2str(kKkareSkor)]);
end





