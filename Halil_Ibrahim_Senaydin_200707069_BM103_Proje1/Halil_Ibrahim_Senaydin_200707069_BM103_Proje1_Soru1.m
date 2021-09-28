clear;
clc;

fprintf('PROGRAMI ÇALIŞTIRDIĞINIZ İÇİN TEŞEKKÜR EDERİM :) \n');
%değişkenleri deve notasyonuna göre adlandırdım

xDeger=input('X DEĞERİNİ GİRİNİZ: ');%x değerini alırız
yDeger=input('Y DEĞERİNİ GİRİNİZ: ');%y değerini alırız

if xDeger>5 && yDeger>15%x'in 5 den büyük y'nin 15 den büyük olduğu değerlerde buraya girer.
    zDeger=(abs(xDeger+5*xDeger*(yDeger^6)-5*xDeger^4)^(-4*xDeger))-(3*exp(-12*yDeger));%öncelik sırasına göre z değeri hesaplanır.1)parantez 2)üs alma 3)çarpma-bölme 4)toplama-çıkarma !Aynı önem derecesindeki ifadeler için soldan başlayarak sağa doğru ilerleyerek işlemi gerçekleştirir.
    fprintf('Z değeri: %g \n',zDeger);%z değerini yazdırıyoruz.

elseif xDeger>5 && yDeger<15%x'in 5 den büyük y'nin 15 den küçük olduğu değerlerde buraya girer.
    tanimsizYapanDeger1=sqrt(3*xDeger^3+5*yDeger);%Payda 0 ise tanımsız olur
    tanimsizYapanDeger2=3*xDeger^3+5*yDeger;%Karekök içi negatifse tanımsız olur

    if tanimsizYapanDeger1==0%TANIMSIZ YAPAN DEĞERLERİ KONTROL EDİYORUM VE BİLGİ ÇIKIŞI YAPIYORUM
        disp('İFADEDE PAYDA=0 HATASI VAR.');
    elseif tanimsizYapanDeger2<0
        disp('İFADEDE KAREKÖK İÇİ NEGATİF HATASI VAR.');
    else
        zDeger=((3*xDeger-5*yDeger^2)^6)/(sqrt(3*xDeger^3+5*yDeger));  
        fprintf('Z değeri: %g \n',zDeger);%z değerini yazdırıyoruz.
    end 
    
elseif xDeger<5 && yDeger>15%x'in 5 den küçük y'nin 15 den büyük olduğu değerlerde buraya girer.
    tanimsizYapanDeger3=xDeger+yDeger;%log10 tabanında(x+y)ifadesinde x+y>0 olmalı. Logaritma özelliği yoksa tanımsız olur.
    tanimsizYapanDeger4=5*xDeger-2*yDeger;%Bu ifadede ln(5x-2y) ifadesinde 5x-2y>0 olmalı ki tanımlı olsun.
    tanimsizYapanDeger5=tand(xDeger);%Bu ifadede x=-90 için ifade tanımsız olur.
    
    if tanimsizYapanDeger3<0 && tanimsizYapanDeger4<0
        disp('BU İFADE TANIMSIZDIR.loga(b) için b>0 olmalı, AKSİ HALDE TANIMSIZ OLUR');
    elseif tanimsizYapanDeger5==-Inf%Bu sefer de bu şekilde göstermek istedim. tanimsizYapanDeger5 değişkenim eğer xDeger olsaydı o zaman burayı elseif tanimsizYapanDeger5==-90 olarak değiştirecektim.
        disp('x=-90 İÇİN İFADE TANIMSIZ OLUR.tan(-90)=-tan(90) ve tan(90) da tanımsızdır.');
        disp('DEĞER OLARAK -Inf DÖNDÜRECEKTİR.');
    else
        zDeger=(10*xDeger*log10(xDeger+yDeger))+(5*log(5*xDeger-2*yDeger))+(tand(xDeger));
        fprintf('Z değeri: %g \n',zDeger);%z değerini yazdırıyoruz.
    end
    
elseif xDeger<5 && yDeger<15%x'in 5 den küçük y'nin 15 den küçük olduğu değerlerde buraya girer.
    zDeger=(abs(-7*xDeger))-(3*sind(4*xDeger*yDeger));
    fprintf('Z değeri: %g \n',zDeger);%z değerini yazdırıyoruz.
       
elseif xDeger==5 || yDeger==15%x'değeri 5 e eşitse y değerinin ne olduğu önemli değil direk bu deyime girer.
                              %y'değeri 15'e eşitse x değerinin ne olduğu
                              %önemli değil direk bu deyime girer.
    %NOT: x=5,y=15 olduğunu düşünelim, bu deyime girer ama z tanımsız değeri
    %döndürür. Çünkü tan90 tanımsız olur! 
    
    tanimsizYapanDeger6=3*xDeger+5*yDeger;%3x+5y ifadesi 90 a eşit olursa tanımsız olur çünkü tan(90) tanımsızdır.
    
    if tanimsizYapanDeger6==90
        disp('tan(90) tanımsızdır. x=5 ve y=15 değerleri için ifade de tanımsız olur :)');
    else
        zDeger=(tand(3*xDeger+5*yDeger))-(5*nthroot(xDeger*yDeger^6,7));
        fprintf('Z değeri: %g \n',zDeger);%z değerini yazdırıyoruz.
    end
end
