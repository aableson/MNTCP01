% Simulate the triple tank system
close all;

% System parameters
VA = 100;
VB = 200;
VC = 100;

% Simulation parameters
k = 2;
w0 = [10, 0, 0];  % Initialize the salt concentration in Tank A, Tank B, Tank C
tspan = [0, 250];
DE = @(t, w) tankSystem2(t, w, k, VA, VB, VC);
[t, w] = ode45(DE, tspan, w0);

plot(t, w);


