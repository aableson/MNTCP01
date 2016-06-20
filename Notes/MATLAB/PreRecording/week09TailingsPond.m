close all

V = @(t) 40000 - 15*t;

dC_dt = @(t, C) (1/V(t)) *( (1500)*(2) - 1500*C + 15*C);
C0 = 0;
tspan = [0, 1000];

[t, C] = ode45(dC_dt, tspan, C0);
plot(t, C);