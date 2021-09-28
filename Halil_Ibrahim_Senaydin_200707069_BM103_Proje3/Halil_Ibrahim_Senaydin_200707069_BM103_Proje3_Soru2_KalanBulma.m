function kalan=Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(bolunen,bolen)

%Bu fonksiyon 2. sorunun zorunlu alt fonksiyonudur. Kalan bulma algoritmasý ile çalýþýr.

bolum=0; %Bolum sayacý ilk deðeri 0'dýr. Daha sayýyý bölmeye baþlamadýk :)
while bolunen>=bolen % Döngüye giriyorsa hala bölünecek kadar büyüktür sayý
    bolunen=bolunen-bolen;
    bolum=bolum+1; % Bölümü 1 artýrarak kaç defa bolündüðünü buluruz. 
end

kalan = bolunen;

