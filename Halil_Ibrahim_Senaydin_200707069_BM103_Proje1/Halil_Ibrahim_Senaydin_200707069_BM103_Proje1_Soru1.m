%ADI: HALÝL ÝBRAHÝM
%SOYADI: ÞENAYDIN
%ÖÐRENCÝ NO: 200707069
%BÖLÜM: BÝLGÝSAYAR MÜHENDÝSLÝÐÝ BÖLÜMÜ
%DERSÝN ADI VE DERSÝN KODU: PROGRAMLAMAYA GÝRÝÞ - BIM-103-50-50
%DERSÝN VERÝLDÝÐÝ AKADEMÝK DÖNEM: 2020-2021 EÐÝTÝM ÖÐRETÝM YILI 1.YARIYIL
%PROJENÝN NUMARASI: PROJE 1
%DERSÝ VEREN ÖÐRETÝM ÜYESÝNÝN ADI: TOLGA AYDIN

clear;
clc;

fprintf('PROGRAMI ÇALIÞTIRDIÐINIZ ÝÇÝN TEÞEKKÜR EDERÝM :) \n');
%deðiþkenleri deve notasyonuna göre adlandýrdým
xDeger=input('X DEÐERÝNÝ GÝRÝNÝZ: ');%x deðerini alýrýz
yDeger=input('Y DEÐERÝNÝ GÝRÝNÝZ: ');%y deðerini alýrýz

if xDeger>5 && yDeger>15%x'in 5 den büyük y'nin 15 den büyük olduðu deðerlerde buraya girer.
    zDeger=(abs(xDeger+5*xDeger*(yDeger^6)-5*xDeger^4)^(-4*xDeger))-(3*exp(-12*yDeger));%öncelik sýrasýna göre z deðeri hesaplanýr.1)parantez 2)üs alma 3)çarpma-bölme 4)toplama-çýkarma !Ayný önem derecesindeki ifadeler için soldan baþlayarak saða doðru ilerleyerek iþlemi gerçekleþtirir.
    fprintf('Z deðeri: %g \n',zDeger);%z deðerini yazdýrýyoruz.
elseif xDeger>5 && yDeger<15%x'in 5 den büyük y'nin 15 den küçük olduðu deðerlerde buraya girer.
    tanimsizYapanDeger1=sqrt(3*xDeger^3+5*yDeger);%Payda 0 ise tanýmsýz olur
    tanimsizYapanDeger2=3*xDeger^3+5*yDeger;%Karekök içi negatifse tanýmsýz olur

    if tanimsizYapanDeger1==0%TANIMSIZ YAPAN DEÐERLERÝ KONTROL EDÝYORUM VE BÝLGÝ ÇIKIÞI YAPIYORUM
        disp('ÝFADEDE PAYDA=0 HATASI VAR.');
    elseif tanimsizYapanDeger2<0
        disp('ÝFADEDE KAREKÖK ÝÇÝ NEGATÝF HATASI VAR.');
    else
        zDeger=((3*xDeger-5*yDeger^2)^6)/(sqrt(3*xDeger^3+5*yDeger));  
        fprintf('Z deðeri: %g \n',zDeger);%z deðerini yazdýrýyoruz.
    end 
    
elseif xDeger<5 && yDeger>15%x'in 5 den küçük y'nin 15 den büyük olduðu deðerlerde buraya girer.
    tanimsizYapanDeger3=xDeger+yDeger;%log10 tabanýnda(x+y)ifadesinde x+y>0 olmalý. Logaritma özelliði yoksa tanýmsýz olur.
    tanimsizYapanDeger4=5*xDeger-2*yDeger;%Bu ifadede ln(5x-2y) ifadesinde 5x-2y>0 olmalý ki tanýmlý olsun.
    tanimsizYapanDeger5=tand(xDeger);%Bu ifadede x=-90 için ifade tanýmsýz olur.
    
    if tanimsizYapanDeger3<0 && tanimsizYapanDeger4<0
        disp('BU ÝFADE TANIMSIZDIR.loga(b) için b>0 olmalý, AKSÝ HALDE TANIMSIZ OLUR');
    elseif tanimsizYapanDeger5==-Inf%Bu sefer de bu þekilde göstermek istedim. tanimsizYapanDeger5 deðiþkenim eðer xDeger olsaydý o zaman burayý elseif tanimsizYapanDeger5==-90 olarak deðiþtirecektim.
        disp('x=-90 ÝÇÝN ÝFADE TANIMSIZ OLUR.tan(-90)=-tan(90) ve tan(90) da tanýmsýzdýr.');
        disp('DEÐER OLARAK -Inf DÖNDÜRECEKTÝR.');
    else
        zDeger=(10*xDeger*log10(xDeger+yDeger))+(5*log(5*xDeger-2*yDeger))+(tand(xDeger));
        fprintf('Z deðeri: %g \n',zDeger);%z deðerini yazdýrýyoruz.
    end
    
elseif xDeger<5 && yDeger<15%x'in 5 den küçük y'nin 15 den küçük olduðu deðerlerde buraya girer.
    zDeger=(abs(-7*xDeger))-(3*sind(4*xDeger*yDeger));
    fprintf('Z deðeri: %g \n',zDeger);%z deðerini yazdýrýyoruz.
       
elseif xDeger==5 || yDeger==15%x'deðeri 5 e eþitse y deðerinin ne olduðu önemli deðil direk bu deyime girer.
                              %y'deðeri 15'e eþitse x deðerinin ne olduðu
                              %önemli deðil direk bu deyime girer.
    %NOT: x=5,y=15 olduðunu düþünelim, bu deyime girer ama z tanýmsýz deðeri
    %döndürür. Çünkü tan90 tanýmsýz olur! 
    
    tanimsizYapanDeger6=3*xDeger+5*yDeger;%3x+5y ifadesi 90 a eþit olursa tanýmsýz olur çünkü tan(90) tanýmsýzdýr.
    
    if tanimsizYapanDeger6==90
        disp('tan(90) tanýmsýzdýr. x=5 ve y=15 deðerleri için ifade de tanýmsýz olur :)');
    else
        zDeger=(tand(3*xDeger+5*yDeger))-(5*nthroot(xDeger*yDeger^6,7));
        fprintf('Z deðeri: %g \n',zDeger);%z deðerini yazdýrýyoruz.
    end
end