% Taylor polynomial for tan(x) around x=pi/4
close all;
x = linspace(0, pi/2, 1000);
y = tan(x);
plot(x, y);
hold on;

P2 = 1 + 2*(x-pi/4) + 2 * (x-pi/4).^2;
plot(x, P2);

P3 = P2 + (8/3)*(x-pi/4).^3;
plot(x, P3);

plot(pi/4, tan(pi/4), '.r', 'markersize', 15);
ylim([0, 4]);
