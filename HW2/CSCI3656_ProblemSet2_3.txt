myFunc = @(x) sin(x) + 0.25;
drivFunc = @(x) cos(x);

x_n = -1;

temp_1 = myFunc(x_n)/drivFunc(x_n);
x_nplus1 = x_n - temp_1;
step = 1;
fprintf ('Step %g has root = %g\n', step, x_nplus1)

while abs(myFunc(x_nplus1)) > 0.0001
    x_n = x_nplus1;
    if (drivFunc(x_n)) ~= 0
        temp_1 = myFunc(x_n)/drivFunc(x_n);
        x_nplus1 = x_n - temp_1;
    end
    step = step + 1;
    fprintf ('Step %g has root = %g\n', step, x_nplus1)
end

fprintf ('Final Root:  %g\n', x_nplus1)
fprintf ('Total Steps: %g\n', step)