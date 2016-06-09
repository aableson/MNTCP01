% ode45 solution to ty' + 2y = t^2 - t + 1, if y(1) = 0.5
% First need to rewrite in y' = form on paper
%        y' = (1/t)(-2y + t^2 - t + 1) 
close all;
tspan = [1, 10];  
y0 = 5;
% defined the DE in a separate line to make it easier to read and fix
DE = @(t, y) (1/t)*(-2*y + t.^2 - t + 1);
[t, y] = ode45(DE, tspan, y0);  % have MATLAB solve the DE
plot(t, y);
