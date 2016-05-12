% Program 9.1, used for 3D plotting of the
% Worthington glacier near Valdez, Alaska

function [ plot ] = CSCI3656_ProblemSet9_1( plot )

%       Top                     Bottom
% (33.44 87.93 105.88)      (15.59 35.07 12.88)
% (8.81 84.07 103.11)       (38.57 37.17 13.33)
% (15.62 34.83 105.98)      (61.10 67.15 17.31)
% (40.16 38.71 108.13)      (58.97 92.05 19.09)
% (61.45 67.07 108.12)      (36.98 63.24 16.51)
% (58.81 91.44 107.72)      (64.45 42.66 20.01)
% (36.97 63.29 107.14)      (89.18 46.85 27.71)
% (64.71 42.38 109.07)      (66.87 18.48 14.24)
% (89.11 46.49 109.93)      (65.90 31.93 21.0)
% (67.24 18.32 109.99)      (76.55 44.51 22.0)
% (65.90 31.93 109.51)
% (76.55 44.51 109.91)

top = [33.44 87.93 105.88; 8.81 84.07 103.11; 15.62 34.83 105.98; 40.16 38.71 108.13; 61.45 67.07 108.12; 58.81 91.44 107.72; 36.97 63.29 107.14; 64.71 42.38 109.07; 89.11 46.49 109.93; 67.24 18.32 109.99; 65.90 31.93 109.51; 76.55 44.51 109.91];
topX = [33.44, 8.81, 15.62, 40.16, 61.45, 58.81, 36.97, 64.71, 89.11, 67.24, 65.90, 76.55];
topY = [87.93, 84.07, 34.83, 38.71, 67.07, 91.44, 63.29, 42.38, 46.49, 18.32, 31.93, 44.51];
topZ = [105.88, 103.11, 105.98, 108.13, 108.12, 107.72, 107.42, 109.07, 109.93, 109.99, 109.51, 109.91];

bottom = [15.59 35.07 12.88; 38.57 37.17 13.33; 61.10 67.15 17.31; 58.97 92.05 19.09; 36.98 63.24 16.5; 64.45 42.66 20.01; 89.18 46.85 27.71; 66.87 18.48 14.24; 65.90 31.93 21.0; 76.55 44.51 22.0];
bottomX = [15.59, 38.57, 61.10, 58.97, 36.98, 64.45, 91.18, 66.87, 65.90, 76.55];
bottomY = [35.07, 37.17, 67.15, 92.05, 63.24, 44.66, 46.85, 18.48, 31.93, 44.51];
bottomZ = [12.88, 13.33, 17.31, 19.09, 16.51, 20.01, 27.71, 14.24, 21.0, 22.0];

if plot == 0
    scatter3(topX, topY, topZ, 'filled');
    title('Worthington Alaskan Glacier Top Surface');
elseif plot == 1
    scatter3(bottomX, bottomY, bottomZ, 'filled');
    title('Worthington Alaskan Glacier Bottom Surface');
elseif plot == 2
    tri = delaunay(topX, topY);
    trisurf(tri, topX, topY, topZ, 'EdgeColor','black');
    title('Worthington Alaskan Glacier Top Surface');
    colormap(winter);
elseif plot == 3
    tri = delaunay(bottomX, bottomY);
    trisurf(tri, bottomX, bottomY, bottomZ, 'EdgeColor','black');
    title('Worthington Alaskan Glacier Bottom Surface');
    colormap(winter);
else 
    fprintf('ERROR: Incorrect parameter\n  For Top Surface, pass 1\n  For Bottom, pass 2\n  For Top Wireframe, pass 3\n  For Bottom Wireframe, pass 4\n');
end

ylabel('y');
xlabel('x');
zlabel('z');