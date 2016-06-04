% Plot of sin(x) on the interval [0, pi], and adding the average value
close all;
x = linspace(0, pi);
y = sin(x);
plot(x, y);
hold on;
% we will re-calculate the average value here, just because we can
f = @(x) sin(x);
avg = (1/pi) * integral(f, 0, pi);
plot([0, pi], [avg, avg], 'r');
