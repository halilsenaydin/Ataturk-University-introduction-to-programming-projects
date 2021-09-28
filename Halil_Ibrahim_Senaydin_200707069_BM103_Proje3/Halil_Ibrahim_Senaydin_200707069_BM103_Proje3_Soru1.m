function output=Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1(firstInput,secondInput,thirdInput)

%Koþullar içindeki her deðer alt fonksiyondan gelen 1 veya 0 deðerleridir.
if Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_1(firstInput,secondInput,thirdInput)
    output=-1;

elseif Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_2(firstInput,secondInput,thirdInput)
    output=-2;

elseif Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_3(firstInput,secondInput,thirdInput)
    output=-3;
    
elseif Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_4(firstInput,secondInput,thirdInput)
    output=-4;
    
else
    %Kendi Alt Fonksiyonlarýmdan Yardým Aldým.
    yuzler = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_EnBuyukBul(firstInput,secondInput,thirdInput);
    birler = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_EnKucukBul(firstInput,secondInput,thirdInput);
    onlar = (firstInput + secondInput + thirdInput) - (yuzler + birler);
    
    if mod(birler,2) ~= 0 
        if mod(onlar,2) == 0
            birler = (firstInput + secondInput + thirdInput) - (yuzler + birler);
            onlar = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_EnKucukBul(firstInput,secondInput,thirdInput);
            
        elseif mod(yuzler,2) == 0
            birler = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_EnBuyukBul(firstInput,secondInput,thirdInput);
            onlar = Halil_Ibrahim_Senaydin_200707069_BM103_Proje3_Soru1_EnKucukBul(firstInput,secondInput,thirdInput);
            yuzler = (firstInput + secondInput + thirdInput) - (onlar + birler);
            
        end           
    end
    
    output = yuzler*100 + onlar*10 + birler;
end



