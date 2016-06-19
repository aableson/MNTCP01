% Constants
close all;
g = 9.8;
mu = 0.1;
L = 2;

tspan = [0, 10];
w0 = [0.05, 0];
DE = @(t, w) pendulumDE(t, w, g, L, mu);
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1))
hold on;

for (theta0 = 0.05:0.05:0.25)
    w0 = [theta0, 0];
    DE = @(t, w) pendulumDE(t, w, g, L, mu);
    [t, w] = ode45(DE, tspan, w0);
    plot(t, w(:,1)) 
    plot([0, 10], [0, 0], 'k')
end
