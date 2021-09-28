function bolum=Soru2_BolumBulma(bolunen,bolen)

%Bu fonksiyon 2.sorunun 3. alt fonksiyonudur. 2 alt fonksiyon zorunlu
%tutulmuştu ama ben 3. alt fonksiyonu da kullanmak istedim.

bolum=0; %Bolum sayacı ilk değeri 0'dır. Daha sayıyı bölmeye başlamadık :)
while bolunen>=bolen % Döngüye giriyorsa hala bölünecek kadar büyüktür sayı
    bolunen=bolunen-bolen;
    bolum=bolum+1; % Bölümü 1 artırarak kaç defa bolündüğünü buluruz. 
end


