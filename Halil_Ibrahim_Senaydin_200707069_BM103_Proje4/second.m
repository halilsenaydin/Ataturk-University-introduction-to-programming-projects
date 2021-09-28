function gizemliKonumAdet = second(M) %Ýnput olarak bir matris alacaðýz.

[satirSayisi,sutunSayisi] = size(M); %Matrisin boyutunu deðiþkenlere atýyoruz.

if MatrisMi(M)
    gizemliKonumAdet = 0;
    return; %Eðer bu koþula girmiþse alttaki kodlara bakmaya gerek yok.
end

for i=1:satirSayisi
    for j=1:sutunSayisi
        if M(i,j) == 1 || M(i,j) == 0 %2.Koþul
            gizemliKonumAdet = 1;
        else
            gizemliKonumAdet = 0; %matris elemanlarý bir ve sýfýrlardan oluþmuyorsa sonucu sýfýr ver ve fonksiyondan çýk!
            return;
        end
    end
end
   
if gizemliKonumAdet %3.Koþul
    gizemliKonumAdet = 0; %Ýlk baþta bu deðiþkeni bool olarak kullandým ama þu an sayaca ihtiyacým var!
    for i=1:satirSayisi
        for j=1:sutunSayisi
            if M(i,j) == 1
                sayac = 0;
                sayac1 = 0;
                for k=1:sutunSayisi %3.for sayesinde satýrlarý kondtol ediyoruz, eðer bir tane bir varsa koþulun ilk kýsmýný saðlýyor demektir. Birden fazla varsa o zaman koþulu saðlamayaaktýr.
                    if M(i,k) == 1
                        sayac = sayac +1; %O satýrda 1 varsa sayacý artýr.    
                    end
                end
                for k=1:satirSayisi %Bu for ile de sütunlarý kontol ediyoruz. Birden fazla bir varsa sýkýntý :( Gizemli konum yoktur demektir o sütun ve satir için geçerli.
                    if M(k,j) == 1
                        sayac1 = sayac1 +1; %O satýrda 1 varsa sayacý artýr.    
                    end
                end
                if sayac == 1 && sayac1 == 1 %M(i,j) de bir var ama eðer ki o sütunda yine bir varsa veya o satýr da baþka bir 1 varsa gizemli konumun adeti artmayacaktýr.
                    gizemliKonumAdet = gizemliKonumAdet +1;
                    fprintf("---------------------------------------------------------------------------------");
                    fprintf("\n%d. Gizemli Konumlu Matrisin Satýr Ve Sütunu : M(%d,%d)\n",gizemliKonumAdet,i,j);
                end
            end          
        end
    end
    fprintf("---------------------------------------------------------------------------------");
end  

