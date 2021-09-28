function gizemliKonumAdet = Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_Soru2(M) % İnput olarak bir matris alacağız.

[satirSayisi,sutunSayisi] = size(M); % Matrisin boyutunu değişkenlere atıyoruz.

if Halil_Ibrahim_Senaydin_200707069_BM103_Proje4_MatrisMi(M)
    gizemliKonumAdet = 0;
    return; % Eğer bu koşula girmişse alttaki kodlara bakmaya gerek yok.
end

for i=1:satirSayisi
    for j=1:sutunSayisi
        if M(i,j) == 1 || M(i,j) == 0 % 2.Koşul
            gizemliKonumAdet = 1;
        else
            gizemliKonumAdet = 0; % matris elemanları bir ve sıfırlardan oluşmuyorsa sonucu sıfır ver ve fonksiyondan çık!
            return;
        end
    end
end
   
if gizemliKonumAdet %3.Koşul
    gizemliKonumAdet = 0; % İlk başta bu değişkeni bool olarak kullandım ama şu an sayaca ihtiyacım var!
    for i=1:satirSayisi
        for j=1:sutunSayisi
            if M(i,j) == 1
                sayac = 0;
                sayac1 = 0;
                for k=1:sutunSayisi % 3.for sayesinde satırları kondtol ediyoruz, eğer bir tane bir varsa koşulun ilk kısmını sağlıyor demektir. Birden fazla varsa o zaman koşulu sağlamayaaktır.
                    if M(i,k) == 1
                        sayac = sayac +1; % O satırda 1 varsa sayacı artır.    
                    end
                end
                for k=1:satirSayisi % Bu for ile de sütunları kontol ediyoruz. Birden fazla bir varsa sıkıntı :( Gizemli konum yoktur demektir o sütun ve satir için geçerli.
                    if M(k,j) == 1
                        sayac1 = sayac1 +1; % O satırda 1 varsa sayacı artır.    
                    end
                end
                if sayac == 1 && sayac1 == 1 % M(i,j) de bir var ama eğer ki o sütunda yine bir varsa veya o satır da başka bir 1 varsa gizemli konumun adeti artmayacaktır.
                    gizemliKonumAdet = gizemliKonumAdet +1;
                    fprintf("---------------------------------------------------------------------------------");
                    fprintf("\n%d. Gizemli Konumlu Matrisin Satır Ve Sütunu : M(%d,%d)\n",gizemliKonumAdet,i,j);
                end
            end          
        end
    end
    fprintf("---------------------------------------------------------------------------------");
end  

