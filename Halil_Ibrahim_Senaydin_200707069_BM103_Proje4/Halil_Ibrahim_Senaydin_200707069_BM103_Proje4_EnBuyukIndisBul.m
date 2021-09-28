function diziIndisi = Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_EnBuyukIndisBul(A)

diziBoyut = length(A);

enBuyuk = A(1);

for i=1:diziBoyut
    if A(i) > enBuyuk
        enBuyuk = A(i);
        diziIndisi = i;
    end
end
