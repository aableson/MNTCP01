% Checking the DE solution
DE = @(t, y) (1/y) - 2;
tspan = [1, 30];
y0 = 1;
[t, y] = ode45(DE, tspan, y0);
plot(t, y);
