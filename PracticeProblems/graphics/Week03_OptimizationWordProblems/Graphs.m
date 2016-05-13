% Graphs

close all
plot([0, 0, 20, 20, 0], [0, 40, 40, 0, 0], 'k');
xlim([-5, 25]);
ylim([-5, 45]);
hold on;
text(10, -2, 'x', 'fontsize', 20);
text(-2, 20, 'y', 'fontsize', 20);

fill([4, 4, 16, 16], [6, 34, 34, 6], [0,0,0]);
text(10, 34, 'Printed Area', 'horizontalalignment', 'center', 'verticalalignment', 'bottom', 'fontsize', 20);

quiver(-2, 25, 0, 15, 'color', 'black');
quiver(-2, 15, 0, -15, 'color', 'black');
quiver(12, -2, 8, 0, 'color', 'black');
quiver(8, -2, -8, 0, 'color', 'black');
axis off
print -depsc Poster

% Cable co.
clf
plot([8, 0, 0], [0, 5, -5], '.k', 'markersize', 20);
axis off;
xlim([-1, 9]);
ylim([-6, 6]);
hold on;
text(8, 0, 'Center', 'fontsize', 20, 'horizontalalignment', 'left');
text(0, -5, 'Shelby', 'fontsize', 20, 'verticalalignment', 'top');
text(0, 5, 'Spring', 'fontsize', 20, 'verticalalignment', 'bottom');
plot([0, 3], [5, 0], 'k', 'linewidth', 3);
plot([0, 3], [-5, 0], 'k', 'linewidth', 3);
plot([3, 8], [0, 0], 'k', 'linewidth', 3);
text(1.5, 0, 'x', 'fontsize', 20);
text(5.5, 0, '8-x', 'fontsize', 20, 'verticalalignment', 'bottom');
quiver(1, 0, -1, 0, 'k' );
quiver(2, 0, 1, 0, 'k' );
quiver(1, 0, -1, 0, 'k' );
quiver(2, 0, 1, 0, 'k' );
text(0, 2.5, '5', 'fontsize', 20, 'verticalalignment', 'middle', 'horizontalalignment', 'center');
quiver(0, 2, 0, -2, 'k' );
quiver(0, 3, 0, 2, 'k' );
text(0, -2.5, '5', 'fontsize', 20, 'verticalalignment', 'middle', 'horizontalalignment', 'center');
quiver(0, -3, 0, -2, 'k' );
quiver(0, -2, 0, 2, 'k' );

print -deps Cablevision

% Worms load


