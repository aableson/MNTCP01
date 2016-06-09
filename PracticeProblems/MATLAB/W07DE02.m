% ode45 solution to (2y-4)y' - 3x^2 = 4x - 4, if y(1) = 3.
% First need to rewrite in y' = form on paper
%    y'  =  (3x^2 +4x - 4)/(2y - 4)
close all;
xspan = [1, 70];  
y0 = 3; 
% defined the DE in a separate line to make it easier to read and fix
DE = @(x, y) (3*x.^2 + 4*x - 4)./(2*y-4);
[x, y] = ode45(DE, xspan, y0);  % have MATLAB solve the DE
plot(x, y);
