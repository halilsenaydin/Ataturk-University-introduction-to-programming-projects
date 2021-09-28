clear;
clc;

%BU PROBLEMİN ÇÖZÜMÜ İÇİN FOR DÖNGÜSÜNÜ KULLANMAYI TERCİH ETTİM ÇÜNKÜ
%KULLANICININ GİRDİĞİ SAYI KADAR DÖNGÜ YAPMAM GEREK. YANİ O KADAR YAZI VE
%TURA ATACAĞIM. BU YÜZDEN FOR MANTIKLI GELDİ, WHİLE DA NEDEN OLMASIN,
%YAPILABİLİR :)

kumar=input('KAÇ YAZI TURA ATMAK İSTEDİĞİNİZİ GİRİNİZ: ');
fprintf('\n');
turaSayisi=0;
yaziSayisi=0;

while 1==1%BURADA SONSUZ DÖNGÜ KULLANMAMIN NEDENİ HATA OLURSA DEĞERİ TEKRAR ALABİLEYİM DİYE.
    if (kumar==fix(kumar)) && kumar>0%KULLANICININ GİRDİĞİ SAYI POZİTİF VE TAM SAYI İSE
        for i=1:kumar%KULANICININ GİRDİĞİ SAYI KADAR
            randomSayi=round(rand(1)*10);%HER DÖNGÜ İTERASYONUNDA DEĞİŞECEK RANDOM SAYI
            if mod(randomSayi,2)==0%EĞER BU RANDOM SAYI 2 İLE TAM BÖLÜNÜYORSA TURA OLSUN VE ONU ARTIR.
                turaSayisi=turaSayisi+1;
            
            elseif mod(randomSayi,2)==1%EĞER BU RANDOM SAYI 2 İLE TAM BÖLÜNMÜYORSA YAZI OLSUN VE ONU ARTIR.
                yaziSayisi=yaziSayisi+1;
            end
        end
        break;%BAŞARIYLA İŞLEMLER GERÇEKLEŞTİRİLMİŞTİR, SONSUZ DÖNGÜ SONLANABİLİR.    
    
    elseif kumar==0%KULLANICI YAZI TURA ATMAK İSTEMEDİĞİNDE
        fprintf('YAZI TURA ATMAMA HAKKINIZ YOK! BU KUMAR OYNANANCAK :)\n');
        kumar=input('KAÇ YAZI TURA ATMAK İSTEDİĞİNİZİ GİRİNİZ: ');
        fprintf('\n');
        
    else%KULLANICININ GİRDİĞİ SAYI POZİTİF VE TAM SAYI DEĞİL İSE
        kumar=input('POZİTİF TAM SAYI GİRİN LÜTFEN: ');
        fprintf('\n');
    end
end

yaziSayisiYuzde=(yaziSayisi/kumar)*100;%YAZI İÇİN YÜZDE HESABI
turaSayisiYuzde=(turaSayisi/kumar)*100;%TURA İÇİN YÜZDE HESABI


%YAZDIRMA İŞLEMLERİ
fprintf('\nTOPLAM %d ADET YAZI TURA ATILMIŞTIR.\n',kumar);

fprintf('\tYAZI SAYISI: %d ',yaziSayisi);
fprintf('VE TOPLAM ATIŞLAR İÇİNDEKİ YÜZDESİ: %%%g\n',yaziSayisiYuzde);

fprintf('\tTURA SAYISI: %d ',turaSayisi);
fprintf('VE TOPLAM ATIŞLAR İÇİNDEKİ YÜZDESİ: %%%g\n',turaSayisiYuzde);


