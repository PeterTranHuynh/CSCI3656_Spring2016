myFunc = @(x) sin(x) + 0.25;

x_1 = -1;
x_2 = 1;

temp_1 = x_2 - x_1;
temp_2 = myFunc(x_2)-myFunc(x_1);
temp_3 = abs(temp_2/temp_1);
temp_4 = myFunc(x_2)/ temp_3;
x_zero = x_2 - temp_4;
step = 1;
fprintf ('Step %g has root = %g\n', step, x_zero)

while abs(myFunc(x_zero)) > 0.0001
    x_1 = x_2;
    x_2 = x_zero;
    if (x_2 - x_1) ~= 0
        if (abs((myFunc(x_2)-myFunc(x_1))/(x_2 - x_1))) ~= 0
            temp_1 = x_2 - x_1;
            temp_2 = myFunc(x_2) - myFunc(x_1);
            temp_3 = abs(temp_2/temp_1);
            temp_4 = myFunc(x_2)/ temp_3;
            x_zero = x_2 - temp_4;
        end
    end
    step = step + 1;
    fprintf ('Step %g has root = %g\n', step, x_zero)
end

fprintf ('Final Root:  %g\n', x_zero)
fprintf ('Total Steps: %g\n', step)