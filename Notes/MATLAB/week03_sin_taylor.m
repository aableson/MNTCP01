% sin(x) and its Taylor approximations near x=0
close all;
x = linspace(-pi, pi, 1000);
y = sin(x);
plot(x, y);

% Linear approx
y2 = x; 
hold on;
plot(x, y2);

% cubic approx
y3 = x - 1/6 *x.^3;
plot(x, y3);

% 5th degree approx
y5 = x - 1/6 *x.^3 + 1/120*x.^5;
plot(x, y5);


ylim( [-1.5, 1.5]);