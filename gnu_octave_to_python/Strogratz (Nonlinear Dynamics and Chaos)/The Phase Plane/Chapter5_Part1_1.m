%define range of x and y; and also, step-size.
x = -10:1:10;
v = -10:1:10;

[X,V] = meshgrid(x,v);

%{
For SHM (simple harmonic motion), we know the dynamical system is:
    x' = v
    v' = -w^2 x
%}
Fx = V;
Fv = -0.9 * X;

%plot vector field
figure(1);
quiver(X,V,Fx,Fv);
title('Simple Harmonic Motion');
xlabel('Position (x)');
ylabel('Velocity (v)');
grid on;