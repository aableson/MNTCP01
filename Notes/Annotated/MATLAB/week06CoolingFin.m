% Define the temperature distribution over the length of the fin
w = 0.01;  % square fin cross-section, width w
h = 10;  % convection coefficient
P = 4*w;  % Perimeter of a square fin = 4 * side length
k = 14;  % conduction coefficient along the fin
Ac = w^2;  % cross-sectional area
L = 0.25; % length of fin, in m
Tb = 100;  % temperature at the base of the fin
% Solution is related to sqrt(hP/k Ac); using a single variable saves typing
m = sqrt(h*P/(k * Ac));

% Here is the "exact" value of the integral, at least to 14 decimal places.
% This was calculated using integration/anti-derivatives.
exact_value = 2.36269950112023;

% Build the function for the temperature along the fin
T = @(x) Tb * (cosh(m*(L-x)) + (h/(m*k)) * sinh(m*(L-x)))/(cosh(m*L) + (h/(m*k)) *sinh(m*L));


