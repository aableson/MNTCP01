f=@(x) x.^2;

x = linspace(-2, 2);
plot(x, f(x))

%% find min of e^(-x) + x
close all
f = @(x) exp(-x) + x;
xmin = fminbnd(f, -10, 10)

x = linspace(-10, 10);
plot(x, f(x));
hold on;
plot(xmin,  f(xmin), '.r');
ylim([-2, 2])

%% g(x) = x sin(x)
close all
g  = @(x) x .* sin(x);
xmin = fminbnd(g, 3*pi, 4*pi);

x = linspace(0, 4*pi);
plot(x, g(x));
hold on;
plot(xmin,  g(xmin), '.r', 'markersize', 15);


