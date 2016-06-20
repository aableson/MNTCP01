% simulate pendulum
close all;
% define constants
g = 9.8; % m/s
L = 2; % m
mu = 0.1;  % Nm /(m/s)

% simulation parameters
tspan = [0, 10];
for (theta0 = 0.25:0.25:pi/2)
    theta0
    w0 = [theta0, 0];    % initial pos, initial vel]
    DE = @(t, w) pendulumDE(t, w, g, L, mu);
    [t, w] = ode45(DE, tspan, w0);
    plot(t, w(:, 1))
    hold on;
end
plot([0, 10], [0, 0], 'k');