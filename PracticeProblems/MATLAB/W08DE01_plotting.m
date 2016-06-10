% Plot the solutions to various first-order differential equations

%% dy/dt = t^2 + y^2, y(0) = 0, and 0 <= t <= 1.
close all;
DE = @(t, y) t.^2 + y.^2;
tspan = [0, 1];
y0 = 0;
[t, y] = ode45(DE, tspan, y0);
plot(t, y, 'linewidth', 2);
print('-dpng', '../graphics/Week08_DESolutions/W08DE01_a')

%% dy/dt = sin(t) + cos(y), y(0) = 0, and 0 <= t <= 10.
close all;
DE = @(t, y) sin(t) + cos(y);
tspan = [0, 10];
y0 = 0;
[t, y] = ode45(DE, tspan, y0);
plot(t, y, 'linewidth', 2);print('-dpng', '../graphics/Week08_DESolutions/W08DE01_b')

%% dy/dt = (1-y^2) + 0.2 sin(t), y(0) = 0, and 0 <= t <= 20.
close all;
DE = @(t, y) 1-y.^2;
tspan = [0, 20];
y0 = 0;
[t, y] = ode45(DE, tspan, y0);
plot(t, y, 'linewidth', 2);print('-dpng', '../graphics/Week08_DESolutions/W08DE01_c')