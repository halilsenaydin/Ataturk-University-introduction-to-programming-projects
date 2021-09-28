function gizemliKonumAdet = second(M) %�nput olarak bir matris alaca��z.

[satirSayisi,sutunSayisi] = size(M); %Matrisin boyutunu de�i�kenlere at�yoruz.

if MatrisMi(M)
    gizemliKonumAdet = 0;
    return; %E�er bu ko�ula girmi�se alttaki kodlara bakmaya gerek yok.
end

for i=1:satirSayisi
    for j=1:sutunSayisi
        if M(i,j) == 1 || M(i,j) == 0 %2.Ko�ul
            gizemliKonumAdet = 1;
        else
            gizemliKonumAdet = 0; %matris elemanlar� bir ve s�f�rlardan olu�muyorsa sonucu s�f�r ver ve fonksiyondan ��k!
            return;
        end
    end
end
   
if gizemliKonumAdet %3.Ko�ul
    gizemliKonumAdet = 0; %�lk ba�ta bu de�i�keni bool olarak kulland�m ama �u an sayaca ihtiyac�m var!
    for i=1:satirSayisi
        for j=1:sutunSayisi
            if M(i,j) == 1
                sayac = 0;
                sayac1 = 0;
                for k=1:sutunSayisi %3.for sayesinde sat�rlar� kondtol ediyoruz, e�er bir tane bir varsa ko�ulun ilk k�sm�n� sa�l�yor demektir. Birden fazla varsa o zaman ko�ulu sa�lamayaakt�r.
                    if M(i,k) == 1
                        sayac = sayac +1; %O sat�rda 1 varsa sayac� art�r.    
                    end
                end
                for k=1:satirSayisi %Bu for ile de s�tunlar� kontol ediyoruz. Birden fazla bir varsa s�k�nt� :( Gizemli konum yoktur demektir o s�tun ve satir i�in ge�erli.
                    if M(k,j) == 1
                        sayac1 = sayac1 +1; %O sat�rda 1 varsa sayac� art�r.    
                    end
                end
                if sayac == 1 && sayac1 == 1 %M(i,j) de bir var ama e�er ki o s�tunda yine bir varsa veya o sat�r da ba�ka bir 1 varsa gizemli konumun adeti artmayacakt�r.
                    gizemliKonumAdet = gizemliKonumAdet +1;
                    fprintf("---------------------------------------------------------------------------------");
                    fprintf("\n%d. Gizemli Konumlu Matrisin Sat�r Ve S�tunu : M(%d,%d)\n",gizemliKonumAdet,i,j);
                end
            end          
        end
    end
    fprintf("---------------------------------------------------------------------------------");
end  

