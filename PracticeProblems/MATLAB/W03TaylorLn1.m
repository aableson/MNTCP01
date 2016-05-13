% Taylor polynomial for ln(x+1) around x=1.
close all;
x = linspace(-0.5, 2.5, 1000);
y = log(x+1);
plot(x, y);
hold on;

P2 = log(2) + (1/2)*(x-1) - (1/8)*(x-1).^2;
plot(x, P2);

P3 = P2 + (1/24)*(x-1).^3;
plot(x, P3);

plot(1, log(1+1), '.r', 'markersize', 15);
% ylim([0, 2]);
