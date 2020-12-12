%program to plot the height & velocity of a falling ball

g = -9.81;
t = 0:1:20;

%prompt the user for the initial conditions of the ball
h0 = input('Intial height of the ball (in meters):');
v0 = input('Initial upward velocity of the ball (in meters per second):');


%calculations according to Newtonian physics
%Note 1: matrix multiplication is "a * b"; array multiplication is "a .* b" 
%Note 2: matrix addition and array addition are identical; both are "a + b"

h = 0.5 .* g .* t .^2 + v0 .* t + h0; 
v = g .* t + v0; 

%plot the height & velocity of the falling ball
plot(t,h,t,v);
xlabel('Time (seconds)');
grid on;

