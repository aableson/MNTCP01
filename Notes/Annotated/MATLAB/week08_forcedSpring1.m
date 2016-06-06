% simulations of the forced spring
close all;
m = 1; 
k = 25; 
c = 1;
A = 1;
B = 1;

DE = @(t, w) forcedSpringDE(t, w, m, k, c, A, B);
tspan = [0, 90];
w0 = [0.5, 0];  % initial pos, initial vel

[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1));