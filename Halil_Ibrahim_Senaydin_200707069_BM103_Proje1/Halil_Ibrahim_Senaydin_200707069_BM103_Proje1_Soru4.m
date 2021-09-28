clear;
clc;

fprintf('PROGRAMI ÇALIŞTIRDIĞINIZ İÇİN TEŞEKKÜR EDERİM :) \n');
%değişkenleri deve notasyonuna göre adlandırdım.

x1=input('x1 değerini giriniz: ');
x2=input('x2 değerini giriniz: ');
x3=input('x3 değerini giriniz: ');

if x1==-1 || x2==-1 || x3==-1%örneğin 1/x1+1 de x1=-1 için payda=0 olur ve ifade tanımsızdır.
    disp('x1=-1 veya x2=-1 veya x3=-1 için payda=0 hatası olur!!! Lütfen başka değer girerek deneyin :)');
elseif nthroot(1/x1+1/x2+1/x3,2/3)==0%İllaki x1,x2 ve x değerleri için payda=0 sağlayan değerler vardır!!!
    disp('Payda=0 hatası var.');
else
    kKkareSkor=9/nthroot(1/x1+1/x2+1/x3,2/3);
    disp(['x1,x2 ve x3 değerlerinin k^2 skoru: ',num2str(kKkareSkor)]);
end





