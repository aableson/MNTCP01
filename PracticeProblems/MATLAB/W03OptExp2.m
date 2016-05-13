% Optimize 4 e^(-x) - 4 e^(-2x)
close all;
f = @(x) 4 * exp(-x) - 4 * exp(-2*x);
x = linspace(0, 1);
plot(x, f(x));
hold on;

% Basic minimum search
xmin = fminbnd(f, 0, 1);
plot(xmin, f(xmin), '.r', 'markersize', 20);
disp('Global min (x, y) ');
disp([xmin, f(xmin)])

% Max search: look for mins of -f(x)
fn = @(x) -1*f(x);
xmax = fminbnd(fn, 0, 1);
plot(xmax, f(xmax), '.g', 'markersize', 20);
disp('Global max (x, y) ');
disp([xmax, f(xmax)])

