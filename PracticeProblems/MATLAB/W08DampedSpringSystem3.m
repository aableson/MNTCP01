% Forcing a damped system
close all;
% Parameters of the system
m = 1;
k = 45;
c = 0.5;

% Simulation inputs
tspan = [0, 30];
w0 = [0, 0];

% Loop over some 'b' values = frequency of the external applied force
for (b = 5:0.5:7)
    DE = @(t, w) springDEDampedAndForced(t, w, m, k, c, b);
    [t, w] = ode45(DE, tspan, w0);
    plot(t, w(:, 1));
    hold on;
    title(b);
    pause(2);
end

% Show just the best b value: 6.5
figure
b = 6.5;
DE = @(t, w) springDEDampedAndForced(t, w, m, k, c, b);
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:, 1));
title('Oscillations with b = 6.5 rad/s');




