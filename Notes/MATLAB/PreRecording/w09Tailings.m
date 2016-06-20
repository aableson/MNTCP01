%w09Tailings
close all
V = @(t) 40000 - 400*t;
dC_dt = @(t, C) (1/V(t)) .* ((1500*2) - 1500*C - 400*C);
tspan = [0, 99];
C0 = 0;
[t, C] = ode45(dC_dt, tspan, C0);
plot(t, C);
