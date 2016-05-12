function [ output ] = CSCI3656_ProblemSet11_3( h ) %(fx, x, x1, x2, h )

%   Composite Simpson's Rule
% Hard Coded values for 2a, Commented out Input parameters, simply comment
% the hard coded values out and reimplement the inputs
fx = [2.9596, 3.0857, 3.2183, 3.3577, 3.5042, 3.6582, 3.8201, 3.9903, 4.1693, 4.3547, 4.5552, 4.7631, 5.2115, 5.7070, 5.9739, 6.2546, 6.5496, 6.8598, 7.1859];
x = [0.9000, 0.9500, 1.0000, 1.0500, 1.1000, 1.1500, 1.2000, 1.2500, 1.3000, 1.3500, 1.4000, 1.4500, 1.5000, 15500, 1.6000, 1.6500, 1.7000, 1.7500, 1.8000, 1.8500, 1.9000];
x1 = 1.0;
x2 = 1.8;

xRounded = round(x, 5);
temp = 0;
startPoint = find(xRounded == x1, 1);
endPoint = find(xRounded == x2, 1)
increment = h / (x(2) - x(1));
temp2 = 0;

for i = round(startPoint + increment): round(2 * increment): round(endPoint - increment)
       temp = temp + fx(i);
end

for i2 = round(startPoint + (2 * increment)): round(2 * increment): round(endPoint - (2 * increment))
       temp2 = temp2 + fx(i2);
end

output = h/3 * ((fx(startPoint)) + (fx(endPoint)) + (4 * temp) + (2 * temp2));

end

