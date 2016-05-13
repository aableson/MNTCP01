% Taylor polynomial for sqrt(15+x^2) around x=1
close all;
x = linspace(0, 2, 1000);
y = sqrt(15 + x.^2);
plot(x, y);
hold on;

P2 = 4 + (1/4)*(x-1) + (15/128)*(x-1).^2;
plot(x, P2);

plot(1, sqrt(15 + 1), '.r', 'markersize', 15);
% ylim([0, 2]);
