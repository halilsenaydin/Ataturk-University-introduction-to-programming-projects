function bool=Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(a)

bool=0;

%Bu fonksiyon 2.sorunun zorunlu alt fonksiyonudur. Çift sayý bulma
%algoritmasý ile çalýþýr.
%Buradaki KalanBulma fonksiyonu alt fonksiyondur.

if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_KalanBulma(a,2)==1 %Girilen parametrenin 2 ile bölümünden kalan 1 ise bu koþula girecektir.
    bool = 1; %Bu Koþula Giriyorsa Çift Sayýdýr Ve True Deðerini Atar.
end