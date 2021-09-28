%ADI: HAL�L �BRAH�M
%SOYADI: �ENAYDIN
%��RENC� NO: 200707069
%B�L�M: B�LG�SAYAR M�HEND�SL��� B�L�M�
%DERS�N ADI VE DERS�N KODU: PROGRAMLAMAYA G�R�� - BIM-103-50-50
%DERS�N VER�LD��� AKADEM�K D�NEM: 2020-2021 E��T�M ��RET�M YILI 1.YARIYIL
%PROJEN�N NUMARASI: PROJE 3
%DERS� VEREN ��RET�M �YES�N�N ADI: TOLGA AYDIN

%Bu fonksiyonu yazarken 3 alt fonksiyon kulland�m.

%Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma()
%Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi()
%Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma()

function adet=Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2(altLimit,ustLimit)

adet=0; %Cift Say�lar�n Tek Say�lardan Fazla Oldu�unu Durumlarda Artacak Sayac De�i�keni

ciftSayisi=0;
tekSayisi=0;


if altLimit>ustLimit %For i�ine girilecek bir durum yoksa -1 ��kt�s�n� verir.
    adet=-1;
elseif (altLimit<100000 || altLimit>999999) || (ustLimit<100000 || ustLimit>999999) %�� basamakl� bir say� girilmemi�se
    adet=-2;
else
    for i=altLimit:ustLimit %istenilen aral�ktaki ard���k say�lar� tarar.
        
        %Bu algoritmay� kendim geli�tirdim.
        %bir for i�in de gelen say�n�n basamaklar�n� mod ve fix fonksiyonlar�n�
        %kullanarak ay�rabilirdim ve �ok k�sa olurdu ama farkl� olmazd�...
        
        for j=1:6 %Basamak say�s� 6'd�r.
            if j == 1 %Y�ZB�NLER BASAMA�I
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(i,100000); 
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
            elseif j == 2 %ONB�NLER BASAMA�I
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,100000);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,10000);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
            elseif j == 3 %B�NLER BASAMA�I
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,10000);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,1000);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
            elseif j == 4 %Y�ZLER BASAMA�I
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,1000);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,100);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
            elseif j == 5 %ONLAR BASAMA�I
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,100);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,10);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
            elseif j == 6 %B�RLER BASAMA�I
                kalan = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_KalanBulma(i,10);
                basamak = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_BolumBulma(kalan,1);
                
                if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru2_CiftMi(basamak)
                    tekSayisi = tekSayisi + 1;
                else 
                    ciftSayisi = ciftSayisi + 1;
                end
                
        if ciftSayisi>tekSayisi %O say� i�in basamak say�lar�n�n teklerden fazla oldu�u zaman adet += 1 yap.
            adet = adet +1;
        end
        ciftSayisi=0; %Di�er say�ya ge�erken �ift say�s�n� s�f�rla
        tekSayisi=0; %Di�er say�ya ge�erken tek say�s�n� s�f�rla
        
            end
        end
    end
end

