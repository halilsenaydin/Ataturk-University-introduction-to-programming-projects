%ADI: HALİL İBRAHİM
%SOYADI: ŞENAYDIN
%ÖĞRENCİ NO: 200707069
%BÖLÜM: BİLGİSAYAR MÜHENDİSLİĞİ BÖLÜMÜ
%DERSİN ADI VE DERSİN KODU: PROGRAMLAMAYA GİRİŞ - BIM-103-50-50
%DERSİN VERİLDİĞİ AKADEMİK DÖNEM: 2020-2021 EĞİTİM ÖĞRETİM YILI 1.YARIYIL
%PROJENİN NUMARASI: PROJE 3
%DERSİ VEREN ÖĞRETİM ÜYESİNİN ADI: TOLGA AYDIN

%Bu fonksiyonu yazarken 3 alt fonksiyon kullandım.

%Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma()
%Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi()
%Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma()

function adet=Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2(altLimit,ustLimit)

adet=0; %Cift Sayıların Tek Sayılardan Fazla Olduğunu Durumlarda Artacak Sayac Değişkeni

ciftSayisi=0;
tekSayisi=0;


if altLimit>ustLimit %For içine girilecek bir durum yoksa -1 çıktısını verir.
    adet=-1;
elseif (altLimit<100000 || altLimit>999999) || (ustLimit<100000 || ustLimit>999999) %Üç basamaklı bir sayı girilmemişse
    adet=-2;
else
    for i=altLimit:ustLimit %istenilen aralıktaki ardışık sayıları tarar.
        
        %Bu algoritmayı kendim geliştirdim.
        %bir for için de gelen sayının basamaklarını mod ve fix fonksiyonlarını
        %kullanarak ayırabilirdim ve çok kısa olurdu ama farklı olmazdı...
        
        for j=1:6 %Basamak sayısı 6'dır.
            if j == 1 %YÜZBİNLER BASAMAĞI
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(i,100000); 
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
            elseif j == 2 %ONBİNLER BASAMAĞI
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,100000);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,10000);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
            elseif j == 3 %BİNLER BASAMAĞI
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,10000);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,1000);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
            elseif j == 4 %YÜZLER BASAMAĞI
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,1000);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,100);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
            elseif j == 5 %ONLAR BASAMAĞI
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,100);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,10);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
            elseif j == 6 %BİRLER BASAMAĞI
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,10);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,1);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
        if ciftSayisi>tekSayisi %O sayı için basamak sayılarının teklerden fazla olduğu zaman adet += 1 yap.
            adet = adet +1;
        end
        ciftSayisi=0; %Diğer sayıya geçerken çift sayısını sıfırla
        tekSayisi=0; %Diğer sayıya geçerken tek sayısını sıfırla
        
            end
        end
    end
end

