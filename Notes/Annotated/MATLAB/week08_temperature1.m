% Temperature model
% dy/dt = -k (y - Text)
close all;
k =  0.2;
Text = 20; % deg celcius
DE = @(t, y) -k*(y - Text);

y0 = 100;
tspan = [0, 30];
[t, y] = ode45(DE, tspan, y0);
plot(t, y, '.');