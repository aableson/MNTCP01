close all
d = [0.39, 0.72, 1, 1.52, 5.20, 9.54, 19.18, 30.06, 39.44];
T = [0.24, 0.62, 1, 1.88, 11.86, 29.46, 84.01, 164.8, 247.7];
plot(d, T, '.')  % or '+', or '*'
hold on
d2 = linspace(min(d), max(d));
T2 = d2.^(1.5);
plot(d2, T2)
hold off;
xlabel('Distance to Sun (AU)')
ylabel('Period (Earth Years)')
