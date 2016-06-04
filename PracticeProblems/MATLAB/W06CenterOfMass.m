%% Center of mass

%% f(x) = x^3 on the interval [1, 4]
close all;
f = @(x) x.^3;
% Note: we also need a _new_ function for the integral in the numerator
fn = @(x) x .* f(x);
xcenter = integral(fn, 1, 4) / integral(f, 1, 4)

x = linspace(1, 4);
plot(x, f(x));  % note we plot just the original f(x) = x^3
hold on;
plot([xcenter, xcenter], [0, 40], 'r');

%% f(x) = x * e^(-x) on the interval [0, 10]
close all;
f = @(x) x .* exp(-x);
% Note: we also need a _new_ function for the integral in the numerator
fn = @(x) x .* f(x);
xcenter = integral(fn, 0, 10) / integral(f, 0, 10)

x = linspace(0, 10);
plot(x, f(x));  % note we plot just the original f(x)
hold on;
plot([xcenter, xcenter], [0, 0.5], 'r');