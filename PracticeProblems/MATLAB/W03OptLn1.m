% Optimize 7x -21 ln(x) on [1, 4]
close all;
f = @(x) 7*x - 21 * log(x);
x = linspace(1, 4);
plot(x, f(x));
hold on;

% Basic minimum search
xmin = fminbnd(f, 1, 4);
plot(xmin, f(xmin), '.r', 'markersize', 20);
disp('Global min (x, y) ');
disp([xmin, f(xmin)])

% Max search: look for mins of -f(x)
fn = @(x) -1*f(x);
xmax = fminbnd(fn, 1, 4);
plot(xmax, f(xmax), '.g', 'markersize', 20);
disp('Global max (x, y) ');
disp([xmax, f(xmax)])

