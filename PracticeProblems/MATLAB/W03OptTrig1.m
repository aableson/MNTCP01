% Optimize 7x - 14 cos(x) on [-pi, pi]
close all;
f = @(x) 7*x - 14 * cos(x);
x = linspace(-pi, pi);
plot(x, f(x));
hold on;

% Basic minimum search
xmin = fminbnd(f, -pi, pi);
plot(xmin, f(xmin), '.r', 'markersize', 20);
disp('Global min (x, y) ');
disp([xmin, f(xmin)])

% Max search: look for mins of -f(x)
fn = @(x) -1*f(x);
xmax = fminbnd(fn, -pi, pi);
plot(xmax, f(xmax), '.g', 'markersize', 20);
disp('Global max (x, y) ');
disp([xmax, f(xmax)])

