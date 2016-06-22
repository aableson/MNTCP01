% Single tank with changing volume
close all;

% Set the simulation parameters
tspan = [0, 300];
S0 = 0.5;  % we start of 0.5 kg of salt in the tank
DE = @(t, S) 0.18*(1 + cos(t)) - (0.6)/(60 + 0.3*t) * S

% Solve the DE/simulate the salt amount over time
[t, S] = ode45(DE, tspan, S0);
plot(t, S, 'linewidth', 2);


