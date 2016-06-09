% ode45 solution to y' = e^(-y) (2t-4), y(0) = 5
close all;
tspan = [0, 30];  
y0 = 5; % = y value at the start of xspan; y(2) = 1
[t, y] = ode45( @(t, y) exp(-y).*(2*t-4), tspan, y0);  % have MATLAB solve the DE
plot(t, y);
