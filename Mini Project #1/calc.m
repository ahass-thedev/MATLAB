%implementing indicator value as a number and not a string
function calculator = calc(num1,num2,indicator)
%adding num1 and num2 together
if(indicator == 1)
    calculator = num1 + num2;
    %subtracting num2 from num1
elseif (indicator == 2)
    calculator = num1 - num2;
    %multiplication of num1 by num2     
elseif (indicator == 3)
    calculator = num1 * num2;
    %divides num1 by num2
elseif (indicator == 4)
    %checking if user is trying to divide by zero and catching possible
    %error
    if(num2 ~= 0)
        calculator = num1/num2;
    else
        calculator = 'Cannot divide by zero';
    end
    %returns exponent of num1 raised to num2
elseif(indicator == 5)
    calculator = num1^num2;
    %returns log base num2 of num1 using change of base formula    
elseif(indicator == 6)
    if(num1 ~= 0 && num2 ~= 1)
    calculator = log10(num1)/log10(num2);
    else 
        calculator = 'Error in input, please revise';
    end
    %returns bigger number
elseif (indicator == 7)
    %testing if number 1 bigger than number 2, and outputting the bigger
    %number
    if(num1 > num2)
        calculator = num1;
    elseif (num1 < num2)
        %testing if number 2 is bigger than number 1, and outputting the bigger
        %number
        calculator = num2;
    elseif(num1 == num2)
        %possibility of numbers being the same thus the possibility had to have
        %a condition to check it
        calculator = 'They are both the same';
    else
        calculator = 'Try again with different numbers';
    end
    %returns smaller number
elseif (indicator == 8)
    %testing if number 1 is smaller than number 2, and outputting the
    %smaller number
    if(num1 < num2)
        calculator = num1;
        %testing if number 2 is smaller than number 1, and outputting the
        %smaller number
    elseif (num1 > num2)
        calculator = num2;
    elseif (num1 == num2)
        %possibility of numbers being the same thus the possibility had to have
        %a condition to check it
        calculator = 'They are both the same';
    else
        calculator = 'Try again with different numbers';
    end
else
    calculator = "Incorrect Input";
end
end