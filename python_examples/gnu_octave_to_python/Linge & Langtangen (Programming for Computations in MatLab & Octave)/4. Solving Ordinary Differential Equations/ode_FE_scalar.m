%FE (Forward Euler) Method
function [sol, time] = ode_FE_scalar(f, x_0, dt, T)
    N = floor(T/dt);
    x = zeros(N+1, 1);
    t = linspace(0, N*dt, length(x));
    x(1) = x_0;
    for n = 1:N
    x(n+1) = x(n) + dt*f(x(n), t(n));
    end
    sol = x;
    time = t;
end