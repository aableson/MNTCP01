% Taylor polynomial demo
close all;
figure();
set(gcf,'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
x = linspace(-4*pi, 4*pi, 500);
y = sin(x);
y2 = 0*x;
for (i = 1:24)
    clf
    plot(x, y, 'linewidth', 3);
    hold on;
    if (mod(i, 4) == 1) % 1, 5, 9, ...
        y2 = y2 + (1/factorial(i)) * x.^i;
    elseif (mod(i, 4) == 3)  % 3, 7, 11, ....
        y2 = y2 - (1/factorial(i)) * x.^i;
    end
    
    plot(x, y2, 'linewidth', 3);
    title(sprintf('Degree %d polynomial', i));
    ylim([-2, 2]);
    pause(1);
end
