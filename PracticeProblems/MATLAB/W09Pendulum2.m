%% Simulation with no initial velocity
close all;
L = 1.5; 
theta0 = 7/8*pi;  % initial angle
mu = 0.2; 
g = 9.8;

% Simulate the motion using ode45, and plot the angle graph, w(:,1)
w0 = [theta0, 0];  % initial angle, and zero initial velocity
tspan = [0, 10];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, mu);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1), 'linewidth', 2);
hold on;
plot(tspan, [0, 0], 'k');

%% Simulations with _positive_initial velocity
close all;
v0 = 1.1;

% Simulate the motion using ode45, and plot the angle graph, w(:,1)
w0 = [theta0, v0];  % initial angle, and now an initial velocity
tspan = [0, 10];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, mu);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1), 'linewidth', 2);
hold on;
% re-run with a little smaller initial velocity
w0 = [theta0, v0-0.1];  % initial angle, and now an initial velocity
tspan = [0, 10];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, mu);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1), 'linewidth', 2);

plot(tspan, [0, 0], 'k');
plot(tspan, [2*pi, 2*pi], 'k');

%% Simulations with _positive_initial velocity
close all;
v0 = -3.3;

% Simulate the motion using ode45, and plot the angle graph, w(:,1)
w0 = [theta0, v0];  % initial angle, and now an initial velocity
tspan = [0, 10];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, mu);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1), 'linewidth', 2);
hold on;
% re-run with a little smaller initial velocity
w0 = [theta0, v0+0.1];  % initial angle, and now an initial velocity
tspan = [0, 10];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, mu);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1), 'linewidth', 2);

plot(tspan, [0, 0], 'k');
plot(tspan, [-2*pi, -2*pi], 'k');

