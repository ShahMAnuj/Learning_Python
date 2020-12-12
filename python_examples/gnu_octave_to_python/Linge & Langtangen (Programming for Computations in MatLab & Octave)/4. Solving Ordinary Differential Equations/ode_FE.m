% Generalized FE (Foward Euler) Method
function [x, t] = ode_FE(f, x_0, dt, T)
    N = floor(T/dt);
    x = zeros(N+1, length(x_0));
    t = linspace(0, N*dt, length(x));
    x(1,:) = x_0; % Initial values
    t(1) = 0;
    for n = 1:N
        x(n+1,:) = x(n,:) + dt*f(x(n,:), t(n));
    end
end