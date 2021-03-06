% Single Tank aquarium
close all;

% Set the simulation parameters
tspan = [0, 1000000];
S0 = 0;
DE = @(t, S) 600 - (3e-5)*S;

% Solve the DE/simulate the salt amount over time
[t, S] = ode45(DE, tspan, S0);
plot(t, S);


