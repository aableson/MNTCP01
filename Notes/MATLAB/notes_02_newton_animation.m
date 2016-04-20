% Animation of Newton's method
close all
hfig = figure();
set(hfig,'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);     hold on;
a = 4;
% f(x) = exp(x/2) - x - 10
pt = 1.5;
for (i = 1:7)
    clf
    % Plot the graph of the function
    x = linspace(3, 8);
    y = exp(x/2) - x - 10;
    plot(x, y, 'b', 'linewidth', 3);
    hold on;
    plot(x, 0*x, 'k');
    ylim([-10, 40]);
    
    % Compute the properties of the tangent line
    fx = exp(a/2) - a - 10;
    fpx = (1/2)*exp(a/2) - 1;
    
    % Plot the tangent line at a
    text(a, 0, 'a', 'verticalalignment', 'top', 'fontsize', 14);
    pause(pt)
    
    plot([a, a], [0, fx], ':k');
    pause(pt);
    
    yline = fx + fpx*(x-a);
    plot(x, yline, 'r');
    
    pause(pt);
    
    
    % Compute the tangent line intercept
    fx = exp(a/2) - a - 10;
    fpx = (1/2)*exp(a/2) - 1;
    c = a - fx/fpx;
    
    text(c, 0, 'c', 'verticalalignment', 'top', 'fontsize', 14);
    pause(pt)
    
    % Replace a with c
    a = c;
    
end