function [ output ] = CSCI3656_ProblemSet12_4( initCond, h, N )

output = [];

for i = 1 : N
    % Vector [x, y, z]^T set into values
    x = initCond(1, 1);
    y = initCond(2, 1);
    z = initCond(3, 1);
    
    % ODE System Equations
    xDot = 16 * (y - x);
    yDot = 45*x - y - x*z;
    zDot = x*y - 4*z;
    
    % 3D Slope into Array
    slopePlane = [xDot; yDot; zDot];
    
    % Setting up for next recursion
    newCond = initCond + h * slopePlane;
    output = [output, newCond];
    initCond = newCond;
end