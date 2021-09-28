function sonuc  = first(A)

diziBoyut = length(A);
diziSatir = size(A);

sonuc = 1; %Dizinin Bora dizisi olduðunu kabul et, olmayana ergi yöntemi :)

if diziSatir ~= 1 %Satýr Vektörü Girilmemiþse Bora dizisi deðildir.
    sonuc = 0;
else
    sayac = 0; 
    if diziBoyut<3 %Dizi Boyutu 3'ten küçükse Bora dizisi deðildir.
        sonuc = 0;
    else
        enBuyukIndis = Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_EnBuyukIndisBul(A); %Alt fonksiyon kullanarak dizideki en büyük elemanýn indis numarasýný sonuc deðiþkenine atadým.
        
        for i=1:enBuyukIndis-1 %En büyüðü bulana kadar sayýlar küçükten büyüðe mi sýralanmýþ ?
            if A(i)>=A(i+1) %Dizinin o andaki elemaný bir sonraki elemanýndan büyükse sayac deðiþkenini artýr.
                %Olmayana ergi yöntemi kullanýlmýþtýr !!!
                sayac = sayac +1;
            end
        end
        
        % diziBoyut-1 olmasýnýn nedeni; for içindeki if A(j+1) þeklinde son elemaný da kontrol ediyor. for koþulunda -1 yapmasaydým dizide olmayan bir elemaný da kontrol etmeye çalýþacaktý, hata :)
        for j=enBuyukIndis:diziBoyut-1 %Dizideki en büyük sayýdan sonraki indisler büyükten küçüðe sýralanmalýdýr.
            %Ters bir durum bulunduðunda sayac deðiþkenini bir artýrýr.
            if A(j)<=A(j+1)
                sayac = sayac +1;
            end
        end

        if sayac~=0 %Sayac sýfýrdan farklýysa koþullara girmiþtir, bu da dizinin Bora dizisi olmadýðýný kanýtlar.
            sonuc = 0;
        end
    end
end
