function bool=Soru1_3(a,b,c)
bool=0;

%Eğer herhangi bir sayı tek ise, kendi alt fonksiyonumdan yardım
%aldım.Tavsiye üzerine yaptığım alt fonksiyondur.
if Soru1_CiftMi(a) && Soru1_CiftMi(b) && Soru1_CiftMi(c)
    bool = 1; %True değeri döndürür.
end
