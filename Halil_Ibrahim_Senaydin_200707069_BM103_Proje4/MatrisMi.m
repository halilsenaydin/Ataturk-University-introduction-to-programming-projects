function sonuc = MatrisMi(M)

[sutun,satir] = size(M);
sonuc = 0; %Matris olduðunu kabul ettim, sýfýr yaptým çünkü eðer matris ise ana fonksiyonda if'in içine girmek istemeyiz :)

if satir == 1 || sutun == 1 %Matrislerin bir satýrý olmaz :) Sütunlarý da sadece bir olamaz :)
    sonuc = 1;
end