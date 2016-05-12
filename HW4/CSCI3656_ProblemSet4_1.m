function output = gaussianElim(matrixA, vectorb)

[n, n] = size(matrixA);
[n, m] = size(vectorb);
output = zeros(n, m);

% Loops through, doing Gaussian Elimination for each diagonal pivot until
% all the values under each pivot are 0.
for i = 1: n - 1
    valueInA = -matrixA(i + 1: n, i) / matrixA(i, i);
    tempA = valueInA * matrixA(i,:);
    tempB = valueInA * vectorb(i,:);
    matrixA(i + 1: n,:) = matrixA(i + 1: n,:) + tempA;
    vectorb(i + 1: n,:) = vectorb(i + 1: n,:) + tempB;
    
    % Displays each step
    fprintf ('Step %g\n  Matrix A:\n', i);
    disp(matrixA);
    fprintf ('  Vector b:\n');
    disp(vectorb);
end;

% Finds the first answer (the last pivot) by dividing the value of the pivot
% from vector b's last value. 
output(n,:) = vectorb(n,:) / matrixA(n, n);

% Repeats answer finding for all x values, using each previous found
% answer. output(i+1:n,:)
for i = n - 1: -1: 1
    tempOut1 = matrixA(i, i + 1: n) * output(i+1: n,:);
    tempOut2 = vectorb(i,:) - tempOut1;
    output(i,:) = tempOut2 / matrixA(i,i);
end
