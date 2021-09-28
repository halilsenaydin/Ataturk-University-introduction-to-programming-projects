function sonuc  = Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_Soru1(A)

diziBoyut = length(A);
diziSatir = size(A);

sonuc = 1; % Dizinin Bora dizisi olduğunu kabul et, olmayana ergi yöntemi :)

if diziSatir ~= 1 % Satır Vektörü Girilmemişse Bora dizisi değildir.
    sonuc = 0;
else
    sayac = 0; 
    if diziBoyut<3 % Dizi Boyutu 3'ten küçükse Bora dizisi değildir.
        sonuc = 0;
    else
        enBuyukIndis = Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_EnBuyukIndisBul(A); % Alt fonksiyon kullanarak dizideki en büyük elemanın indis numarasını sonuc değişkenine atadım.
        
        for i=1:enBuyukIndis-1 % En büyüğü bulana kadar sayılar küçükten büyüğe mi sıralanmış ?
            if A(i)>=A(i+1) % Dizinin o andaki elemanı bir sonraki elemanından büyükse sayac değişkenini artır.
                % Olmayana ergi yöntemi kullanılmıştır !!!
                sayac = sayac +1;
            end
        end
        
        % diziBoyut-1 olmasının nedeni; for içindeki if A(j+1) şeklinde son elemanı da kontrol ediyor. for koşulunda -1 yapmasaydım dizide olmayan bir elemanı da kontrol etmeye çalışacaktı, hata :)
        for j=enBuyukIndis:diziBoyut-1 %Dizideki en büyük sayıdan sonraki indisler büyükten küçüğe sıralanmalıdır.
            % Ters bir durum bulunduğunda sayac değişkenini bir artırır.
            if A(j)<=A(j+1)
                sayac = sayac +1;
            end
        end

        if sayac~=0 % Sayac sıfırdan farklıysa koşullara girmiştir, bu da dizinin Bora dizisi olmadığını kanıtlar.
            sonuc = 0;
        end
    end
end
