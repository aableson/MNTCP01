% Temperature average
close all;
H = @(t) 18 + 4*sin(pi*t/12);
A = (1/12) * integral(H, 0, 12)

% plot
t = linspace(0, 12);
plot(t, H(t));
hold on;
plot([0, 12], [A, A], 'r');