clear all, close all, clc
L = 100;
H = 100;
u = zeros(L,H);
[X,Y] = meshgrid(1:1:L,1:1:H);

BC = sin(2*pi*(1:H)/H);
A2 = (2/(H*sinh(2*pi*L/H)))*sum(BC.^2);
u =A2*sin(2*pi*Y/H).*sinh(2*pi*X/H);
imagesc(u);
colorbar;