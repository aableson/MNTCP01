% Optimize 7 e^{7x^3-7x} on [-1, 0]
close all;
f = @(x) 7 * exp(7*x.^3 - 7*x);
x = linspace(-1, 0);
plot(x, f(x));
hold on;

% Basic minimum search
xmin = fminbnd(f, -1, 0);
plot(xmin, f(xmin), '.r', 'markersize', 20);
disp('Global min (x, y) ');
disp([xmin, f(xmin)])

% Max search: look for mins of -f(x)
fn = @(x) -1*f(x);
xmax = fminbnd(fn, -1, 0);
plot(xmax, f(xmax), '.g', 'markersize', 20);
disp('Global max (x, y) ');
disp([xmax, f(xmax)])

