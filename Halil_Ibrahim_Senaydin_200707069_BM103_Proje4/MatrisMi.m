function sonuc = MatrisMi(M)

[sutun,satir] = size(M);
sonuc = 0; %Matris oldu�unu kabul ettim, s�f�r yapt�m ��nk� e�er matris ise ana fonksiyonda if'in i�ine girmek istemeyiz :)

if satir == 1 || sutun == 1 %Matrislerin bir sat�r� olmaz :) S�tunlar� da sadece bir olamaz :)
    sonuc = 1;
end