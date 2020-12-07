clear all, close all, clc


dx = .1;
N = 1001;
L = 100;
dx = L/(N-1);
x = -L/2:dx:L/2-dx;
f = 0*x;
f((L/2 - L/10)/dx:(L/2 + L/10)/dx) = 1;
a = 5;
y = x;
dt = 0.1;
for k = 1:100
    t = k*dt;
    for j = 1:length(x)
        xi = x(j) - y;
        gxy = (1/(2*a*sqrt(pi*t)))*exp(-xi.^2/(4*a*a*t));
        u(j) = dot(gxy,f)*dx;
    end
    plot(x,u,'k')
    xlabel('Spatial variable, x')
    ylabel('Temperature, u(x,t)')
    title(['Time, t=',num2str(t)])    
    axis([-L/2 L/2 -.1 1.1])

    pause(0.1)
end