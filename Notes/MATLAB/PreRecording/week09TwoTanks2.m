% simulation of the two linked tanks with backfeed
close all;

% simulation parameters
tspan = [0, 100];
C0 = [0, 90];  % 0 and 90 g/L to start in each tank.
DE = @(t, C) Tank2DE(t, C);
[t, C] = ode45(DE, tspan, C0);
plot(t, C);
hold on;
plot( tspan, [30, 30], 'k');