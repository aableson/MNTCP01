% Taylor polynomial for sqrt(5+x) around x=-4
close all;
x = linspace(-5, -3, 1000);
y = sqrt(5+x);
plot(x, y);
hold on;

P3 = 1 + (1/2)*(x+4) + (1/2)*(-1/4)*(x+4).^2 ...
    + (1/6)*(3/8)*(x+4).^3;
plot(x, P3);

plot(-4, sqrt(5-4), '.r', 'markersize', 15);
% ylim([0, 2]);
