clear all, close all, clc
L = 100;
H = 100;
u = zeros(L,H);
[X,Y] = meshgrid(1:1:L,1:1:H);

BC = ones(size(H,1));

for k=1:100
    Ak = (2/(H*sinh(k*pi*L/H)))*sum(BC.*sin(k*pi*(1:H)/H));
    u = u + Ak*sin(k*pi*Y/H).*sinh(k*pi*X/H);
end
imagesc(u);
colorbar;