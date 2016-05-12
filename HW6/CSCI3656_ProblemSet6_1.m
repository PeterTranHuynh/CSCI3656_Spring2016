function f_xmid = CSCI3656_ProblemSet6_1( x1, x2, f_x1, f_x2, x_mid )

% Variables for Linear Interpolation/Extrapolation:
% f(x*) =   f_xmid,     Solution/Output
% x1    =   x1,         Initial x's
% x2    =   x2
% f(x1) =   f_x1,       Initial functions
% f(x2) =   f_x2
% x*    =   x_mid,      Between x1 and x2, desired function's input

% CITED DATA SOURCE: http://www.censusindia.gov.in/2011census/PCA/A2_Data_Table.html

% P1(x) = ((x1 - x)y0 + (x - x0)y1) / (x1 - x0)
f_xmid = (x_mid - x1) * (f_x2 - f_x1) / (x2 - x1) + f_x1;

scatter([x1, x2, x_mid], [f_x1, f_x2 f_xmid], 50, 'black', 'filled')
lsline
plottools