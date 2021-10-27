function diziIndisi = EnBuyukIndisBul(A)

diziBoyut = length(A);

enBuyuk = A(1);

for i=1:diziBoyut
    if A(i) > enBuyuk
        enBuyuk = A(i);
        diziIndisi = i;
    end
end
