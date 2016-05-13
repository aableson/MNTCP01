% Graphs
close all;
x = linspace(0, 10);
y = @(x) (3-x).*(8-x);
plot(x, y(x));
hold on;

plot([0, 0], [-10, 25], 'k', 'linewidth', 3);
plot([0, 10], [00, 0], 'k', 'linewidth', 3);
xlim([-0.5, 10]);
axis off

text(3, 0, 'a', 'fontsize', 20, 'verticalalignment', 'bottom');
text(8, 0, 'b', 'fontsize', 20, 'verticalalignment', 'bottom');
plot([3, 8], [0, 0], '.k', 'markersize', 20);
print -depsc RateGraph