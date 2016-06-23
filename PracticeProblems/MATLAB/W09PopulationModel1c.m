
%% Population model with harvesting
close all

P0 = 15;
k2 = 16;
tspan = [0, 15];

% Simulation with cyclic harvesting
DE = @(t, P) (10-P).*P - k2*(sin(pi*t) + 1);
[t, P1] = ode45(DE, tspan, P0);
plot(t, P1);
hold on;

DE = @(t, P) (10-P).*P - (k2+1)*(sin(pi*t) + 1);
[t, P1] = ode45(DE, tspan, P0);
plot(t, P1);
hold on;

ylim([0, P0]);