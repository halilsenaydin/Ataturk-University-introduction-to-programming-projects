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

maas=100;%Maa�� 100 olsun i��inin
kacIsci=input('KA� AY �ALI�TI�INIZI G�R�N: ');
prim=0;%�lk prim 0'd�r.

while 1
    if kacIsci<0
        kacIsci=input('PANDEM�DEN DOLAYI ��S�Z OLDU�UNUZU ANLADIM, SANIRIM YANLI� ANLIYORUM. POZ�T�F B�R SAYI G�RMEL�S�N�Z: ');
    
    elseif kacIsci~=fix(kacIsci)
        kacIsci=input('YANLI� G�R�� YAPTINIZ! �RNE��N 1.5 AY �ALI�TIYSANIZ 1 AY OLARAK G�R�N: ');
        
    else
        for i=1:kacIsci
            if mod(i,12)==0
                maas=maas+maas*(10/100);%Maasa %10 zam.
            end
            
            prim=prim+maas*(1/100);     
        end
        break;
        
    end
end

fprintf('�LK MAA�IN %%%g KADAR PR�M ALMI�SINIZ.\n',prim);