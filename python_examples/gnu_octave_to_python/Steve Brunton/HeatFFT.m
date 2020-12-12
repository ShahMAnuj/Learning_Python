clear all, close all, clc

dx = .1;
N = 1001;
L = 20;
dx = L/(N-1);
x = -L/2:dx:L/2-dx;
f = 0*x;
f(end/4:3*end/4) = 1;
a = .1;
fhat = fft(f);

dt = 0.1;
for k = 1:100
    t = k*dt;
    Nx = max(size(f));
    kappa = (2*pi/L)*[-Nx/2:Nx/2-1];
    kappa = fftshift(kappa);  % important because fft has weird ordering
    uhat = fhat.*exp(-(a^2)*t*kappa.^2);
    u = ifft(uhat);
    plot(x,u)
    xlabel('Spatial variable, x')
    ylabel('Temperature, u(x,t)')
    title(['Time, t=',num2str(t)])
    axis([-10 10 -.1 1.1])

    pause(0.1)
end