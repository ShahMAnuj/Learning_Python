%{
Purpose: 
    This program plots the gain pattern for a microwave dish antenna.
    
Define variables:
    G -- gain of the microwave dish antena
    theta -- angle from the boresite of the dish (radians)    
%}

% Caculate the gain versus angle
theta = -pi/2:pi/70:pi/2;
G = abs(sin(4 .* theta)./(4 .* theta));

%Polar plot of gain
polar(theta, G, 'r-');
title('Gain pattern for a microwave dish antenna');

