% Plot of sqrt(1-x^2) on the interval [0, 1], and adding the average value
close all;
x = linspace(0, 1);
f = @(x) sqrt(1 - x.^2);
plot(x, f(x));
hold on;
avg = (1/1) * integral(f, 0, 1)
plot([0, 1], [avg, avg], 'r');
