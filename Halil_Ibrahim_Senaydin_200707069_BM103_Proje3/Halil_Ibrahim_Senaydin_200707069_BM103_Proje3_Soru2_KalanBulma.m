function kalan=Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(bolunen,bolen)

%Bu fonksiyon 2. sorunun zorunlu alt fonksiyonudur. Kalan bulma algoritmas� ile �al���r.

bolum=0; %Bolum sayac� ilk de�eri 0'd�r. Daha say�y� b�lmeye ba�lamad�k :)
while bolunen>=bolen % D�ng�ye giriyorsa hala b�l�necek kadar b�y�kt�r say�
    bolunen=bolunen-bolen;
    bolum=bolum+1; % B�l�m� 1 art�rarak ka� defa bol�nd���n� buluruz. 
end

kalan = bolunen;

