function sonuc  = first(A)

diziBoyut = length(A);
diziSatir = size(A);

sonuc = 1; %Dizinin Bora dizisi oldu�unu kabul et, olmayana ergi y�ntemi :)

if diziSatir ~= 1 %Sat�r Vekt�r� Girilmemi�se Bora dizisi de�ildir.
    sonuc = 0;
else
    sayac = 0; 
    if diziBoyut<3 %Dizi Boyutu 3'ten k���kse Bora dizisi de�ildir.
        sonuc = 0;
    else
        enBuyukIndis = Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_EnBuyukIndisBul(A); %Alt fonksiyon kullanarak dizideki en b�y�k eleman�n indis numaras�n� sonuc de�i�kenine atad�m.
        
        for i=1:enBuyukIndis-1 %En b�y��� bulana kadar say�lar k���kten b�y��e mi s�ralanm�� ?
            if A(i)>=A(i+1) %Dizinin o andaki eleman� bir sonraki eleman�ndan b�y�kse sayac de�i�kenini art�r.
                %Olmayana ergi y�ntemi kullan�lm��t�r !!!
                sayac = sayac +1;
            end
        end
        
        % diziBoyut-1 olmas�n�n nedeni; for i�indeki if A(j+1) �eklinde son eleman� da kontrol ediyor. for ko�ulunda -1 yapmasayd�m dizide olmayan bir eleman� da kontrol etmeye �al��acakt�, hata :)
        for j=enBuyukIndis:diziBoyut-1 %Dizideki en b�y�k say�dan sonraki indisler b�y�kten k����e s�ralanmal�d�r.
            %Ters bir durum bulundu�unda sayac de�i�kenini bir art�r�r.
            if A(j)<=A(j+1)
                sayac = sayac +1;
            end
        end

        if sayac~=0 %Sayac s�f�rdan farkl�ysa ko�ullara girmi�tir, bu da dizinin Bora dizisi olmad���n� kan�tlar.
            sonuc = 0;
        end
    end
end
