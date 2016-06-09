% ode45 solution to   $ty' - 2y = t^5 \sin (2t) - t^3 + 4t^4$, if
% y(pi) = \frac{3}{2}pi^4
% First need to rewrite in y' = form on paper
%    y'  =  (1/t) (2y + t^5 sin(2t) - t^3 + 4t^4) 
close all;
tspan = [pi, 30];  
y0 = (3/2)*pi^4;
% defined the DE in a separate line to make it easier to read and fix
DE = @(t, y) (1/t)*(2*y+ t.^5 .* sin(2*t) - t.^3 + 4*t.^4);
[t, y] = ode45(DE, tspan, y0);  % have MATLAB solve the DE
plot(t, y);
