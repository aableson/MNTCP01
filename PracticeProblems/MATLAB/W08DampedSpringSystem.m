close all
% Set the parameters for the damped spring system
m = 10;
k = 2;
c = 0.4;

% Define the simulation time span and starting conditions
w0 = [0.5, 0];  % 0.5 m displacement, zero initial velocity
DE = @(t, w) springDEDamped(t, w, k, m, c);  % DE with the k, m, c filled in
tspan = [0, 30];
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1));  % position is in the 1st column of w.

% add a line at x=+/- 0.05 to indicate the 10% cutoff. 
hold on;
plot(tspan, [0.05, 0.05], 'r');
plot(tspan, [-0.05, -0.05], 'r');