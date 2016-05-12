%% g(x) = x sin(x)
close all
g  = @(x) x .* sin(x);

gn = @(x) -1*g(x);
xmin = fminbnd(gn, 0, 4*pi);

x = linspace(0, 4*pi);
plot(x, g(x));
hold on;
plot(xmin,  g(xmin), '.r', 'markersize', 15);


%% Area example
close all
A = @(x) x .* (480-x)/2;
x = linspace(0, 480);
plot(x, A(x));

An = @(x) -1 * A(x);
xmax = fminbnd(An, 0, 480);
hold on;
plot(xmax, A(xmax), '.r', 'markersize', 15);


