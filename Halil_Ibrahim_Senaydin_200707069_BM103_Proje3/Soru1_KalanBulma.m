function kalan=Soru1_KalanBulma(bolunen,bolen)

bolum=0; %Bolum sayacı ilk değeri 0'dır. Daha sayıyı bölmeye başlamadık :)
while bolunen>=bolen % Döngüye giriyorsa hala bölünecek kadar büyüktür sayı
    bolunen=bolunen-bolen;
    bolum=bolum+1; % Bölümü 1 artırarak kaç defa bolündüğünü buluruz. 
end

kalan = bolunen;

