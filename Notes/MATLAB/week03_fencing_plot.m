% plot of A = function of length of one side.
close all;
x = linspace(0, 480);
A = x .* (480-x)./2;
plot(x, A);