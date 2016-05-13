% Taylor polynomial for cos(4x) around x=pi/4
close all;
x = linspace(-pi/2, 3*pi/2, 1000);
y = cos(4*x);
plot(x, y);
hold on;

P4 = -1 + 16/2*(x-pi/4).^2 -256/24*(x-pi/4).^4;
plot(x, P4);

plot(pi/4, cos(4*pi/4), '.r', 'markersize', 15);
ylim([-1.5, 1.5]);
