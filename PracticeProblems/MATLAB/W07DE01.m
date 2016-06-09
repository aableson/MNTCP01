% ode45 solution to y' = - y^2/x^3, y(1) = 1
close all;
xspan = [2, 30];  % must start at x=2, from y(2) = 1
y0 = 1; % = y value at the start of xspan; y(2) = 1
[x, y] = ode45( @(x, y) -y.^2./x.^3, xspan, y0);  % have MATLAB solve the DE
plot(x, y);
