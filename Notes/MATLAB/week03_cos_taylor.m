% plots cos(x) and its Taylor polynomial approximations.
close all;
x = linspace(-pi, pi);
y = cos(x);
plot(x, y);
hold on;
% tangent line at x=0
plot( [-pi, pi], [1, 1]);

ylim([-1.5, 1.5])

% quadratic Taylor polynomial
p2 = 1 - (1/2)*x.^2;
plot(x, p2);

