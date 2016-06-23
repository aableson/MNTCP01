
%% Population model with harvesting
close all

P0 = 15;
k1 = 25;
tspan = [0, 30];

% Simulation with simple harvesting
DE = @(t, P) (10-P).*P - k1;
tspan = [0, 30];
[t, P1] = ode45(DE, tspan, P0);
plot(t, P1);
hold on;
% Simulation with simple harvesting
DE = @(t, P) (10-P).*P - (k1+1);
tspan = [0, 30];
[t, P1] = ode45(DE, tspan, P0);
plot(t, P1);
hold on;

% ylim([0, P0]);