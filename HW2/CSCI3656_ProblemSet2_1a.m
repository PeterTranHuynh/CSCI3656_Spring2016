myFunc = @(x) sin(x) + 0.25;

x_low = 1;
x_high = 5;

temp_1 = x_low + x_high;
x_mid = temp_1 / 2;
step = 1;
fprintf ('Step %g has root = %g\n', step, x_mid)

while abs(myFunc(x_mid)) > 0.000099
    if (myFunc(x_mid) * myFunc(x_high)) < 0
        x_low = x_mid;
    else
        x_high = x_mid;
    end
    temp_1 = x_low + x_high;
    x_mid = temp_1 / 2;
    step = step + 1;
    fprintf ('Step %g has root = %g\n', step, x_mid)
end

fprintf ('Final Root:  %g\n', x_mid)
fprintf ('Total Steps: %g\n', step)