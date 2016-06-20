% simulate pendulum
close all;
% define constants
g = 9.8; % m/s
L = 2; % m
mu = 0.1;  % Nm /(m/s)

% simulation parameters
tspan = [0, 10];
w0 = [0.05, 0];    % initial pos, initial vel]
DE = @(t, w) pendulumDE(t, w, g, L, mu);
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:, 1))