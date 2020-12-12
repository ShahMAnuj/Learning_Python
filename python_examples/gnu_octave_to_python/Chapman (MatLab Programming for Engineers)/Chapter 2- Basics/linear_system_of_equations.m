%Solving a 6 x 6 system of linear equations
% Ax = B, which means that x = inv(A) B = A\B
% Thus, the left-division operator can be used to solve systems of simultaneous equations

A = [-2 5 1 3 4 -1; 2 -1 -5 -2 6 4; -1 6 -4 -5 3 -1; 4 3 -6 -5 -2 -2; -3 6 4 2 -6 4; 2 4 4 4 5 -4];

B = [0; 1; -6; 10; -6; -2];

x = A\B;
disp(x);

