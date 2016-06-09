% ode45 solution to 2xy^2 + 4 = 2(3 - x^2y)y' if y(5) = 8$.
% First need to rewrite in y' = form on paper
%    y' = (2xy^2 + 4)/(2 (3-x^2 y))
close all;
xspan = [5, 100];  
y0 = 8;
% defined the DE in a separate line to make it easier to read and fix
DE = @(x, y) (2.*x.*y.^2 + 4)./(2*(3-x.^2 .*y));
[t, y] = ode45(DE, xspan, y0);  % have MATLAB solve the DE
plot(t, y);
