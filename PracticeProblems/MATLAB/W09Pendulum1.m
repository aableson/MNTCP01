%% 
close all;
L = 2; 
theta0 = 40*pi/180;  % convert to radians

% Compute the period
k = sin((1/2)*theta0);
g = 9.8;
f  = @(x)  1./sqrt(1-k^2 * (sin(x)).^2);
period = 4*sqrt(L/g) * integral(f, 0, pi/2);
disp([L, theta0*180/pi, period])

% Simulate the motion using ode45, and plot the _velocity_ graph, w(:, 2)
w0 = [theta0, 0];  % initial angle, and zero initial velocity
tspan = [0, period];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, 0);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,2), 'linewidth', 2);
hold on;
plot(tspan, [0, 0], 'k');

%% 
close all;
L = 2.5; 
theta0 = 20*pi/180;  % convert to radians

% Compute the period
k = sin((1/2)*theta0);
g = 9.8;
f  = @(x)  1./sqrt(1-k^2 * (sin(x)).^2);
period = 4*sqrt(L/g) * integral(f, 0, pi/2);
disp([L, theta0*180/pi, period])

% Simulate the motion using ode45, and plot the _velocity_ graph, w(:, 2)
w0 = [theta0, 0];  % initial angle, and zero initial velocity
tspan = [0, period];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, 0);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,2), 'linewidth', 2);
hold on;
plot(tspan, [0, 0], 'k');

%% 
close all;
L = 5; 
theta0 = 90*pi/180;  % convert to radians

% Compute the period
k = sin((1/2)*theta0);
g = 9.8;
f  = @(x)  1./sqrt(1-k^2 * (sin(x)).^2);
period = 4*sqrt(L/g) * integral(f, 0, pi/2);
disp([L, theta0*180/pi, period])

% Simulate the motion using ode45, and plot the _velocity_ graph, w(:, 2)
w0 = [theta0, 0];  % initial angle, and zero initial velocity
tspan = [0, period];  % simulate for one full period
DE = @(t, w) pendulumDE(t, w, g, L, 0);  % last zero = friction coefficient.
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,2), 'linewidth', 2);
hold on;
plot(tspan, [0, 0], 'k');
