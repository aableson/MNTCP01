% Optimize 3 cos(x) / (20 + 10 sin(x)) on [0, 2 pi]
close all;
f = @(x) 3 * cos(x) ./ (20 + 10 * sin(x));
x = linspace(0, 2*pi);
plot(x, f(x));
hold on;

% Basic minimum search
xmin = fminbnd(f, 0, 2*pi);
plot(xmin, f(xmin), '.r', 'markersize', 20);
disp('Global min (x, y) ');
disp([xmin, f(xmin)])

% Max search: look for mins of -f(x)
fn = @(x) -1*f(x);
xmax = fminbnd(fn, 0, 2*pi);
plot(xmax, f(xmax), '.g', 'markersize', 20);
disp('Endpoint (x, y) ');
disp([xmax, f(xmax)])

% Search again, because there is a local max that is being missed.
xmax = fminbnd(fn, 5, 2*pi);
plot(xmax, f(xmax), '.g', 'markersize', 20);
disp('Global max (x, y) ');
disp([xmax, f(xmax)])

