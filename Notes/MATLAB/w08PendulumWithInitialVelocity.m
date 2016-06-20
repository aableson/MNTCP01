% 
close all

% parameters
g = 9.8; % m/s
L = 2; % m
mu = 0.1; % nM / (rad/s)

% simulation parameters
tspan = [0, 10];
w0 = [-pi/2, 3.7];  % initial pos/angle, velocity
DE = @(t, w) pendulumDE(t, w, g, L, mu);
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1));
hold on;
plot([0, 10], [2*pi, 2*pi], 'k');

w0 = [-pi/2, 3.6];  % initial pos/angle, velocity
DE = @(t, w) pendulumDE(t, w, g, L, mu);
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1));
plot([0, 10], [0, 0], 'k');
