function kalan=Soru2_KalanBulma(bolunen,bolen)

%Bu fonksiyon 2. sorunun zorunlu alt fonksiyonudur. Kalan bulma algoritması ile çalışır.

bolum=0; %Bolum sayacı ilk değeri 0'dır. Daha sayıyı bölmeye başlamadık :)
while bolunen>=bolen % Döngüye giriyorsa hala bölünecek kadar büyüktür sayı
    bolunen=bolunen-bolen;
    bolum=bolum+1; % Bölümü 1 artırarak kaç defa bolündüğünü buluruz. 
end

kalan = bolunen;

