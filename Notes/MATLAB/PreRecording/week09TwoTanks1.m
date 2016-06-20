% Simulate the 2-tank model concentrations
close all;

% parameters
VA = 50;
VB = 100;

% simulation settings
tspan = [0, 100];
C0 = [ 0,  0];  % initial concentrations in Tank A, B
DE = @(t, C) Tank1DE(t, C, VA, VB);
[t, C] = ode45(DE, tspan, C0);
plot(t, C);