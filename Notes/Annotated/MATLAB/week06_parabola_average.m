%week06
close all;
f = @(x) x.^2;
A = (1/4)*integral(f, -2, 2)

% plot the graph and the average
x = linspace(-2, 2);
plot(x, f(x));
hold on;
plot([-2, 2], [A, A], 'r')