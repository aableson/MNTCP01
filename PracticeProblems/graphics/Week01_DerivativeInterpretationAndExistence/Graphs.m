close all;
% Graphs of different derivative conditions

% derivative positive, gradually increasing
x = linspace(0.5, 4);
y = x.^2;
grid on;
plot(x, y, 'k', 'linewidth', 3);
axis off
print -depsc DerivCondition1.eps

% derivative negative, gradually increasing
x = linspace(-4, -0.5);
y = x.^2;
grid on;
plot(x, y, 'k', 'linewidth', 3);
axis off
print -depsc DerivCondition2.eps

% derivative positive, gradually decreasing
x = linspace(-4, -0.5);
y = -x.^2;
grid on;
plot(x, y, 'k', 'linewidth', 3);
axis off
print -depsc DerivCondition3.eps
