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

%BU PROBLEM�N ��Z�M� ���N FOR D�NG�S�N� KULLANMAYI TERC�H ETT�M ��NK�
%KULLANICININ G�RD��� SAYI KADAR D�NG� YAPMAM GEREK. YAN� O KADAR YAZI VE
%TURA ATACA�IM. BU Y�ZDEN FOR MANTIKLI GELD�, WH�LE DA NEDEN OLMASIN,
%YAPILAB�L�R :)

kumar=input('KA� YAZI TURA ATMAK �STED���N�Z� G�R�N�Z: ');
fprintf('\n');
turaSayisi=0;
yaziSayisi=0;

while 1==1%BURADA SONSUZ D�NG� KULLANMAMIN NEDEN� HATA OLURSA DE�ER� TEKRAR ALAB�LEY�M D�YE.
    if (kumar==fix(kumar)) && kumar>0%KULLANICININ G�RD��� SAYI POZ�T�F VE TAM SAYI �SE
        for i=1:kumar%KULANICININ G�RD��� SAYI KADAR
            randomSayi=round(rand(1)*10);%HER D�NG� �TERASYONUNDA DE���ECEK RANDOM SAYI
            if mod(randomSayi,2)==0%E�ER BU RANDOM SAYI 2 �LE TAM B�L�N�YORSA TURA OLSUN VE ONU ARTIR.
                turaSayisi=turaSayisi+1;
            
            elseif mod(randomSayi,2)==1%E�ER BU RANDOM SAYI 2 �LE TAM B�L�NM�YORSA YAZI OLSUN VE ONU ARTIR.
                yaziSayisi=yaziSayisi+1;
            end
        end
        break;%BA�ARIYLA ��LEMLER GER�EKLE�T�R�LM��T�R, SONSUZ D�NG� SONLANAB�L�R.    
    
    elseif kumar==0%KULLANICI YAZI TURA ATMAK �STEMED���NDE
        fprintf('YAZI TURA ATMAMA HAKKINIZ YOK! BU KUMAR OYNANANCAK :)\n');
        kumar=input('KA� YAZI TURA ATMAK �STED���N�Z� G�R�N�Z: ');
        fprintf('\n');
        
    else%KULLANICININ G�RD��� SAYI POZ�T�F VE TAM SAYI DE��L �SE
        kumar=input('POZ�T�F TAM SAYI G�R�N L�TFEN: ');
        fprintf('\n');
    end
end

yaziSayisiYuzde=(yaziSayisi/kumar)*100;%YAZI ���N Y�ZDE HESABI
turaSayisiYuzde=(turaSayisi/kumar)*100;%TURA ���N Y�ZDE HESABI


%YAZDIRMA ��LEMLER�
fprintf('\nTOPLAM %d ADET YAZI TURA ATILMI�TIR.\n',kumar);

fprintf('\tYAZI SAYISI: %d ',yaziSayisi);
fprintf('VE TOPLAM ATI�LAR ���NDEK� Y�ZDES�: %%%g\n',yaziSayisiYuzde);

fprintf('\tTURA SAYISI: %d ',turaSayisi);
fprintf('VE TOPLAM ATI�LAR ���NDEK� Y�ZDES�: %%%g\n',turaSayisiYuzde);


