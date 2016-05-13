% Taylor polynomial for sin(x) around x=0
close all;
x = linspace(-pi, pi, 1000);
y = sin(x);
plot(x, y);
hold on;

k = 1/sqrt(2);  % this will save typing in the P5 formula
P5 = k + k*(x-pi/4) - k/2*(x-pi/4).^2 ...
    - k/factorial(3)*(x-pi/4).^3 ...
    + k/factorial(4)*(x-pi/4).^4 ...
    + k/factorial(5)*(x-pi/4).^5;
plot(x, P5);

plot(pi/4, sin(pi/4), '.r', 'markersize', 15);
ylim([-1.5, 1.5]);
