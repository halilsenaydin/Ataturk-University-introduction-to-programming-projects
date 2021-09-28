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
%de�i�kenleri deve notasyonuna g�re adland�rd�m
xDeger=input('X DE�ER�N� G�R�N�Z: ');%x de�erini al�r�z
yDeger=input('Y DE�ER�N� G�R�N�Z: ');%y de�erini al�r�z

if xDeger>5 && yDeger>15%x'in 5 den b�y�k y'nin 15 den b�y�k oldu�u de�erlerde buraya girer.
    zDeger=(abs(xDeger+5*xDeger*(yDeger^6)-5*xDeger^4)^(-4*xDeger))-(3*exp(-12*yDeger));%�ncelik s�ras�na g�re z de�eri hesaplan�r.1)parantez 2)�s alma 3)�arpma-b�lme 4)toplama-��karma !Ayn� �nem derecesindeki ifadeler i�in soldan ba�layarak sa�a do�ru ilerleyerek i�lemi ger�ekle�tirir.
    fprintf('Z de�eri: %g \n',zDeger);%z de�erini yazd�r�yoruz.
elseif xDeger>5 && yDeger<15%x'in 5 den b�y�k y'nin 15 den k���k oldu�u de�erlerde buraya girer.
    tanimsizYapanDeger1=sqrt(3*xDeger^3+5*yDeger);%Payda 0 ise tan�ms�z olur
    tanimsizYapanDeger2=3*xDeger^3+5*yDeger;%Karek�k i�i negatifse tan�ms�z olur

    if tanimsizYapanDeger1==0%TANIMSIZ YAPAN DE�ERLER� KONTROL ED�YORUM VE B�LG� �IKI�I YAPIYORUM
        disp('�FADEDE PAYDA=0 HATASI VAR.');
    elseif tanimsizYapanDeger2<0
        disp('�FADEDE KAREK�K ��� NEGAT�F HATASI VAR.');
    else
        zDeger=((3*xDeger-5*yDeger^2)^6)/(sqrt(3*xDeger^3+5*yDeger));  
        fprintf('Z de�eri: %g \n',zDeger);%z de�erini yazd�r�yoruz.
    end 
    
elseif xDeger<5 && yDeger>15%x'in 5 den k���k y'nin 15 den b�y�k oldu�u de�erlerde buraya girer.
    tanimsizYapanDeger3=xDeger+yDeger;%log10 taban�nda(x+y)ifadesinde x+y>0 olmal�. Logaritma �zelli�i yoksa tan�ms�z olur.
    tanimsizYapanDeger4=5*xDeger-2*yDeger;%Bu ifadede ln(5x-2y) ifadesinde 5x-2y>0 olmal� ki tan�ml� olsun.
    tanimsizYapanDeger5=tand(xDeger);%Bu ifadede x=-90 i�in ifade tan�ms�z olur.
    
    if tanimsizYapanDeger3<0 && tanimsizYapanDeger4<0
        disp('BU �FADE TANIMSIZDIR.loga(b) i�in b>0 olmal�, AKS� HALDE TANIMSIZ OLUR');
    elseif tanimsizYapanDeger5==-Inf%Bu sefer de bu �ekilde g�stermek istedim. tanimsizYapanDeger5 de�i�kenim e�er xDeger olsayd� o zaman buray� elseif tanimsizYapanDeger5==-90 olarak de�i�tirecektim.
        disp('x=-90 ���N �FADE TANIMSIZ OLUR.tan(-90)=-tan(90) ve tan(90) da tan�ms�zd�r.');
        disp('DE�ER OLARAK -Inf D�ND�RECEKT�R.');
    else
        zDeger=(10*xDeger*log10(xDeger+yDeger))+(5*log(5*xDeger-2*yDeger))+(tand(xDeger));
        fprintf('Z de�eri: %g \n',zDeger);%z de�erini yazd�r�yoruz.
    end
    
elseif xDeger<5 && yDeger<15%x'in 5 den k���k y'nin 15 den k���k oldu�u de�erlerde buraya girer.
    zDeger=(abs(-7*xDeger))-(3*sind(4*xDeger*yDeger));
    fprintf('Z de�eri: %g \n',zDeger);%z de�erini yazd�r�yoruz.
       
elseif xDeger==5 || yDeger==15%x'de�eri 5 e e�itse y de�erinin ne oldu�u �nemli de�il direk bu deyime girer.
                              %y'de�eri 15'e e�itse x de�erinin ne oldu�u
                              %�nemli de�il direk bu deyime girer.
    %NOT: x=5,y=15 oldu�unu d���nelim, bu deyime girer ama z tan�ms�z de�eri
    %d�nd�r�r. ��nk� tan90 tan�ms�z olur! 
    
    tanimsizYapanDeger6=3*xDeger+5*yDeger;%3x+5y ifadesi 90 a e�it olursa tan�ms�z olur ��nk� tan(90) tan�ms�zd�r.
    
    if tanimsizYapanDeger6==90
        disp('tan(90) tan�ms�zd�r. x=5 ve y=15 de�erleri i�in ifade de tan�ms�z olur :)');
    else
        zDeger=(tand(3*xDeger+5*yDeger))-(5*nthroot(xDeger*yDeger^6,7));
        fprintf('Z de�eri: %g \n',zDeger);%z de�erini yazd�r�yoruz.
    end
end