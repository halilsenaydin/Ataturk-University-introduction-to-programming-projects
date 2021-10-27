function output=Soru1(firstInput,secondInput,thirdInput)

%Koþullar içindeki her deðer alt fonksiyondan gelen 1 veya 0 deðerleridir.
if Soru1_1(firstInput,secondInput,thirdInput)
    output=-1;

elseif Soru1_2(firstInput,secondInput,thirdInput)
    output=-2;

elseif Soru1_3(firstInput,secondInput,thirdInput)
    output=-3;
    
elseif Soru1_4(firstInput,secondInput,thirdInput)
    output=-4;
    
else
    %Kendi Alt Fonksiyonlarýmdan Yardým Aldým.
    yuzler = Soru1_EnBuyukBul(firstInput,secondInput,thirdInput);
    birler = Soru1_EnKucukBul(firstInput,secondInput,thirdInput);
    onlar = (firstInput + secondInput + thirdInput) - (yuzler + birler);
    
    if mod(birler,2) ~= 0 
        if mod(onlar,2) == 0
            birler = (firstInput + secondInput + thirdInput) - (yuzler + birler);
            onlar = Soru1_EnKucukBul(firstInput,secondInput,thirdInput);
            
        elseif mod(yuzler,2) == 0
            birler = Soru1_EnBuyukBul(firstInput,secondInput,thirdInput);
            onlar = Soru1_EnKucukBul(firstInput,secondInput,thirdInput);
            yuzler = (firstInput + secondInput + thirdInput) - (onlar + birler);
            
        end           
    end
    
    output = yuzler*100 + onlar*10 + birler;
end



