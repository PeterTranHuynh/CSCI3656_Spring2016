function [ output ] = CSCI3656_ProblemSet13_1( initCond, h, N )

output = [];

for i = 1 : N
    % OLD: Used for Backwards Elimination Plane Slope
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
    
    % NEW: Trapizoidal, Forward Elimination Step for Plane Slope
    forwardElimTestStep = CSCI3656_ProblemSet12_4( initCond, h, 1 );
    xForwardElim = forwardElimTestStep(1, 1);
    yForwardElim = forwardElimTestStep(2, 1);
    zForwardElim = forwardElimTestStep(3, 1);
    
    xDotForwardElim = 16 * (yForwardElim - xForwardElim);
    yDotForwardElim = 45*xForwardElim - yForwardElim - xForwardElim*zForwardElim;
    zDotForwardElim = xForwardElim*yForwardElim - 4*zForwardElim;
    
    forwardElimSlopePlane = [xDotForwardElim; yDotForwardElim; zDotForwardElim];
    
    % OLD: ForwardElim Setting up for next loop
        % newCond = initCond + h * slopePlane;
        
    % NEW: Trapizoidal, averages ForwardElim slope and BackwardElim slope
    newCond = initCond + h/2 * (slopePlane + forwardElimSlopePlane);
    
    output = [output, newCond];
    initCond = newCond;
end