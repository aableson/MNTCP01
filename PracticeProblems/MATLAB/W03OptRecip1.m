% Optimize (10/t) + 4, on (0, 1] 
% OPEN left side of interval
% We will refer to 'x' as the variable though, for 
% consistency with earlier solutions.
close all;
f = @(x) (10./x) + 4;
x = linspace(0, 1);
plot(x, f(x));
hold on;

% Basic minimum search 
% NOTE: interval used starts at (arbitrarily chosen) 0.0001
xmin = fminbnd(f, 0.0001, 1);
plot(xmin, f(xmin), '.r', 'markersize', 20);
disp('Global min (x, y) ');
disp([xmin, f(xmin)])

% Max search: look for mins of -f(x)
% NOTE: interval used starts at (arbitrarily chosen) 0.0001
fn = @(x) -1*f(x);
xmax = fminbnd(fn, 0.0001, 1);
plot(xmax, f(xmax), '.g', 'markersize', 20);
disp('Global max (x, y) ');
disp([xmax, f(xmax)])

% Need ylim to see what is happening with the graph
ylim([0, 100]);


