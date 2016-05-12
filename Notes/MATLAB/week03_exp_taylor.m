% x e^(-x) graph; Taylor approx

close all;
x = linspace(0, 2);
y = x .* exp(-x);
plot(x, y);

hold on;
plot( [0, 2], [exp(-1), exp(-1)]);

y2 = exp(-1) - exp(-1)/2 .* (x-1).^2;
plot(x, y2);