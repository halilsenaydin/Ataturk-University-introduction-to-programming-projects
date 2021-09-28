function bool=Soru1_CiftMi(a)

bool=0;

%Buradaki KalanBulma fonksiyonu alt fonksiyondur. Tavsiye üzerine yaptım 
%mod(a,b) hazır fonk. kullanabilirdim.

if Soru1_KalanBulma(a,2)==1 %Girilen parametrenin 2 ile bölümünden kalan 1 ise bu koşula girecektir.
    bool = 1; %Bu Koşula Giriyorsa Çift Sayıdır Ve True Değerini Atar.
end
