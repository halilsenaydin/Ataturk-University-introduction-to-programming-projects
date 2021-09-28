clear;
clc;

%değişkenleri deve notasyonuna göre adlandırdım.

maas=input('MAAŞINIZI TL OLARAK GİRİNİZ: ');%maas' kullanıcıdan aldık.
if maas<0%maaş 0 dan küçük olamaz.
    fprintf('NEGATİF BİR DEĞER GİRDİNİZ!!!\n');
else
    if maas>=6000%maaş 6000 den büyük veya eşitse kredi onaylanacak.
        fprintf('KREDİ BAŞVURUNUZ ONAYLANMIŞTIR \n');
    else %değilse kamu çalışanı olup olmadığı sorulacak.        
        kamu=input('KAMU PERSONELİYSENİZ e TUŞUNA DEĞİLSENİZ h TUŞUNA BASINIZ: ','s');
        if kamu=='e'|| kamu=='E'%kamu çalışanıysa kredi onaylanır
            fprintf('KREDİ BAŞVURUNUZ ONAYLANMIŞTIR \n');

        elseif kamu=='h'||kamu=='H'%kamu çalışanı değilse kredi onaylanmaz.
            fprintf('KREDİ BAŞVURUNUZ ONAYLANMADI, HEM MAAŞINIZ DÜŞÜK HEM DE KAMU PERSONELİ DEĞİLSİNİZ. ÜZGÜNÜM KREDİ VEREMEM :( \n');

        else%kullanıcı e ve h tuşundan başka bir tuş girdiği zaman hata verecek.
            fprintf('!!! YANLIŞ TUŞLADINIZ, KAMU PERSONELİYSENİZ e TUŞUNA DEĞİLSENİZ h TUŞUNA BASINIZ !!! \n');
            %Aslında döngü kullansaydık, programın tamamını while ile sonsuz döngüye alırdık.
            %else deyimine girdiği zaman tekrar değer istenirdi diğer if elseif
            %deyimlerinde ise break ile while döngüsünü sonlandırırdık. Ama
            %döngü kullanımı yasaklandı :(
        end
    end
end




