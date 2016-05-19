% Graphs

close all
x = linspace(0, 2*pi);
y= exp(-x).*sin(x);
plot(x, y);
hold on;
plot([0, 0], [-1, -1], 'k', 'linewidth', 2);
% xlim([-1, 2*pi+1]);

