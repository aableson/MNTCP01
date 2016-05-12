% Taylor polynomial demo
close all;
figure();
set(gcf,'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
set(groot, 'defaultAxesTickLabelInterpreter','latex'); set(groot, 'defaultLegendInterpreter','latex');



x = linspace(-4*pi, 4*pi, 500);
% x = linspace(-pi, pi, 500);
y = sin(x);
hold on;
plot(x, 0*x, 'k');
plot([0, 0], [-2, 2], 'k');

plot(x, y, 'linewidth', 3);
pause(2);
plot(0, 0, '.k', 'markersize', 14);
pause(2);

polynomial_str = '\displaystyle y =';
y2 = 0*x;
for (i = 1:24)
    clf
    plot(x, y, 'linewidth', 3);
    hold on;
    if (mod(i, 4) == 1) % 1, 5, 9, ...
        y2 = y2 + (1/factorial(i)) * x.^i;
        if (i > 1)
            polynomial_str = strcat(polynomial_str, sprintf('+\\frac{1}{%d !}x^{%d}', i, i));
        else
            polynomial_str = strcat(polynomial_str, 'x');
        end
    elseif (mod(i, 4) == 3)  % 3, 7, 11, ....
        y2 = y2 - (1/factorial(i)) * x.^i;
        polynomial_str = strcat(polynomial_str, sprintf('-\\frac{1}{%d !}x^{%d}', i, i));
    end
    
    plot(x, y2, 'linewidth', 3);
    title(sprintf('Degree %d polynomial', i));
    ylim([-2, 2]);
    plot(x, 0*x, 'k');
    plot([0, 0], [-2, 2], 'k');
    plot(0, 0, '.k', 'markersize', 14);
    text(min(x), 1.5, strcat('$', polynomial_str, '$'), 'interpreter','latex', 'fontsize', 16);
    disp(polynomial_str)
    pause(1);
end
