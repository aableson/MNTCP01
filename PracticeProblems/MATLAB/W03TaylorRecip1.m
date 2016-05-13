% Taylor polynomial for 1/(1+x) around x=7
close all;
x = linspace(4, 10, 1000);
y = 1./(1+x);
plot(x, y);
hold on;

P2 = (1/8) - (1/64)*(x-7)+(1/512)*(x-7).^2;
plot(x, P2);

P3 = P2 -0.000244*(x-7).^3;
plot(x, P3);

plot(7, 1/(7+1), '.r', 'markersize', 15);
% ylim([0, 2]);
