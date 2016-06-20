% 
close all;
% Parmaters
E = 9.1e9;
I = 2.23e-6;
L = 2;
xspan = [0, 2];

p = 100;  % N/m
tor = @(x) x .* p(x);
V0 = -100*(2)/(E*I);
M0 = -100*(2^2/2)/(E*I);

w0 = [0, 0, V0, M0];
DE = @(x, w) beamDE1(x, w, E, I, p);
[x, w] = ode45(DE, xspan, w0);
plot(x, w(:,1));