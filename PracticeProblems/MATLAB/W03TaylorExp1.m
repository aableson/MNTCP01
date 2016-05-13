% Taylor polynomial for e^(-x) + e^(-2x) around x=2
close all;
x = linspace(0, 4, 1000);
y = exp(-x) + exp(-2*x);
plot(x, y);
hold on;

P2 = (exp(-2) + exp(-4))...
- (exp(-2) + 2*exp(-4))*(x-2) ...
+ (exp(-2) + 4*exp(-4))*(1/2)*(x-2).^2;
plot(x, P2);

P3 = P2 - (exp(-2)+8*exp(-4))*(1/6)*(x-2).^3;
plot(x, P3);

plot(2, exp(-2)+exp(-2*2), '.r', 'markersize', 15);
% ylim([0, 2]);
