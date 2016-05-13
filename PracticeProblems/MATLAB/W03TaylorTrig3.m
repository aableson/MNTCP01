% Taylor polynomial for sin(x) around x = \pi/6
close all;
x = linspace(-pi, pi, 1000);
y = sin(x);
plot(x, y);
hold on;

P2 = (1/2) + sqrt(3)/2*(x-pi/6) - (1/2)*(1/2)*(x-pi/6).^2;
plot(x, P2);

P3 = P2 - (1/6)*(sqrt(3)/2)*(x-pi/6).^3;
plot(x, P3);

plot(pi/6, sin(pi/6), '.r', 'markersize', 15);
ylim([-1.5, 1.5]);
