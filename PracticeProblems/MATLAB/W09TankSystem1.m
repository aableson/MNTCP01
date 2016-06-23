% Simulate the paired tank system
close all;
% Simulation parameters
w0 = [200, 900];  % Initialize the salt levels in Tank A, Tank B.
tspan = [0, 50];
DE = @(t, w) tankSystem1(t, w);
[t, w] = ode45(DE, tspan, w0);

plot(t, w(:,1));
title('Tank A Salt Amount over Time');

figure;  % opens a new figure window, for a separate plot
plot(t, w(:,2));
title('Tank B Salt Amount over Time');

