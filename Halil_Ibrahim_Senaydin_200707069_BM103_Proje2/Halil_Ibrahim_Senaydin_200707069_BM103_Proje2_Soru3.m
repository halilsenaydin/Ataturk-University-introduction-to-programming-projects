%ADI: HALÝL ÝBRAHÝM
%SOYADI: ÞENAYDIN
%ÖÐRENCÝ NO: 200707069
%BÖLÜM: BÝLGÝSAYAR MÜHENDÝSLÝÐÝ BÖLÜMÜ
%DERSÝN ADI VE DERSÝN KODU: PROGRAMLAMAYA GÝRÝÞ - BIM-103-50-50
%DERSÝN VERÝLDÝÐÝ AKADEMÝK DÖNEM: 2020-2021 EÐÝTÝM ÖÐRETÝM YILI 1.YARIYIL
%PROJENÝN NUMARASI: PROJE 2
%DERSÝ VEREN ÖÐRETÝM ÜYESÝNÝN ADI: TOLGA AYDIN

clear;
clc;

%BU PROBLEMÝN ÇÖZÜMÜ ÝÇÝN FOR DÖNGÜSÜNÜ KULLANMAYI TERCÝH ETTÝM ÇÜNKÜ
%KULLANICININ GÝRDÝÐÝ SAYI KADAR DÖNGÜ YAPMAM GEREK. YANÝ O KADAR YAZI VE
%TURA ATACAÐIM. BU YÜZDEN FOR MANTIKLI GELDÝ, WHÝLE DA NEDEN OLMASIN,
%YAPILABÝLÝR :)

kumar=input('KAÇ YAZI TURA ATMAK ÝSTEDÝÐÝNÝZÝ GÝRÝNÝZ: ');
fprintf('\n');
turaSayisi=0;
yaziSayisi=0;

while 1==1%BURADA SONSUZ DÖNGÜ KULLANMAMIN NEDENÝ HATA OLURSA DEÐERÝ TEKRAR ALABÝLEYÝM DÝYE.
    if (kumar==fix(kumar)) && kumar>0%KULLANICININ GÝRDÝÐÝ SAYI POZÝTÝF VE TAM SAYI ÝSE
        for i=1:kumar%KULANICININ GÝRDÝÐÝ SAYI KADAR
            randomSayi=round(rand(1)*10);%HER DÖNGÜ ÝTERASYONUNDA DEÐÝÞECEK RANDOM SAYI
            if mod(randomSayi,2)==0%EÐER BU RANDOM SAYI 2 ÝLE TAM BÖLÜNÜYORSA TURA OLSUN VE ONU ARTIR.
                turaSayisi=turaSayisi+1;
            
            elseif mod(randomSayi,2)==1%EÐER BU RANDOM SAYI 2 ÝLE TAM BÖLÜNMÜYORSA YAZI OLSUN VE ONU ARTIR.
                yaziSayisi=yaziSayisi+1;
            end
        end
        break;%BAÞARIYLA ÝÞLEMLER GERÇEKLEÞTÝRÝLMÝÞTÝR, SONSUZ DÖNGÜ SONLANABÝLÝR.    
    
    elseif kumar==0%KULLANICI YAZI TURA ATMAK ÝSTEMEDÝÐÝNDE
        fprintf('YAZI TURA ATMAMA HAKKINIZ YOK! BU KUMAR OYNANANCAK :)\n');
        kumar=input('KAÇ YAZI TURA ATMAK ÝSTEDÝÐÝNÝZÝ GÝRÝNÝZ: ');
        fprintf('\n');
        
    else%KULLANICININ GÝRDÝÐÝ SAYI POZÝTÝF VE TAM SAYI DEÐÝL ÝSE
        kumar=input('POZÝTÝF TAM SAYI GÝRÝN LÜTFEN: ');
        fprintf('\n');
    end
end

yaziSayisiYuzde=(yaziSayisi/kumar)*100;%YAZI ÝÇÝN YÜZDE HESABI
turaSayisiYuzde=(turaSayisi/kumar)*100;%TURA ÝÇÝN YÜZDE HESABI


%YAZDIRMA ÝÞLEMLERÝ
fprintf('\nTOPLAM %d ADET YAZI TURA ATILMIÞTIR.\n',kumar);

fprintf('\tYAZI SAYISI: %d ',yaziSayisi);
fprintf('VE TOPLAM ATIÞLAR ÝÇÝNDEKÝ YÜZDESÝ: %%%g\n',yaziSayisiYuzde);

fprintf('\tTURA SAYISI: %d ',turaSayisi);
fprintf('VE TOPLAM ATIÞLAR ÝÇÝNDEKÝ YÜZDESÝ: %%%g\n',turaSayisiYuzde);


