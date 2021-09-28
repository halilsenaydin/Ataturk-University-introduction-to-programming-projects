function sonuc = Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_MatrisMi(M)

[sutun,satir] = size(M);
sonuc = 0; % Matris olduğunu kabul ettim, sıfır yaptım çünkü eğer matris ise ana fonksiyonda if'in içine girmek istemeyiz :)

if satir == 1 || sutun == 1 % Matrislerin bir satırı olmaz :) Sütunları da sadece bir olamaz :)
    sonuc = 1;
end
