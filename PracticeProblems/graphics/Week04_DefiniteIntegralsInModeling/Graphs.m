close all;
addpath('..');
% Water tower
clf
t = 0:6:30;
R = [-50, -30, 0, 100, 150, 100];
pp = pchip(t, R);
tt = linspace(0, 30, 500);
RR = ppval(pp, tt);
plot(tt, RR, 'k', 'linewidth', 2);
hold on;
ylim([-100, 150]);
xlim([0, 30]);

axis off;
plot(t, 0*t, 'k', 'linewidth', 3);
axis_numbering(t, -100:50:150, 24, '%d', 10, 0.2);
gridf(t, -100:50:150);
plot([0, 0], [-100, 150], 'k', 'linewidth', 3);
plot([0, 30], [0, 0], 'k', 'linewidth', 3);
print('-depsc', 'WaterTower2');

% and adding the colouring
tt = linspace(0, 12);
RR = ppval(pp, tt);
fill([0, tt], [0, RR], [0.5, .1, .1]);
tt = linspace(12, 30);
RR = ppval(pp, tt);
fill([tt, 30], [RR, 0], [0.5, 0.5, 1]);

axis_numbering(t, -100:50:150, 24, '%d', 10, 0.2);
gridf(t, -100:50:150);
plot([0, 0], [-100, 150], 'k', 'linewidth', 3);
plot([0, 30], [0, 0], 'k', 'linewidth', 3);
print('-depsc', 'WaterTower2_soln');
