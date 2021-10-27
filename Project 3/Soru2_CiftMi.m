function bool=Soru2_CiftMi(a)

bool=0;

%Bu fonksiyon 2.sorunun zorunlu alt fonksiyonudur. Çift sayı bulma
%algoritması ile çalışır.
%Buradaki KalanBulma fonksiyonu alt fonksiyondur.

if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_KalanBulma(a,2)==1 %Girilen parametrenin 2 ile bölümünden kalan 1 ise bu koşula girecektir.
    bool = 1; %Bu Koşula Giriyorsa Çift Sayıdır Ve True Değerini Atar.
end
