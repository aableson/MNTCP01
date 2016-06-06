% Modelling production
close all;
k_values = [0.1, 0.2, .6, 1.2];
for (i = 1:length(k_values))
    k = k_values(i);
    t = linspace(0, 30);
    f = @(t) t.*exp(-k*t);
    a(i) = integral(f, 0, 30)/100;
    y = (1/a(i)) *t.*exp(-k*t);
    plot(x, y);
    hold on;
end

price = 10;
c1 = 0.04;
c2 = 1.5;
r = 0.05;
for (i = 1:length(k_values))
    prod = @(t) (1/a(i)) *t.*exp(-k*t); 
    R = @(t) price * prod(t);
    profit = @(t) R(t) - c1*prod(t) - c2*(prod(t)).^2;
    future_value = @(t) profit(t) .* exp(r * (30 - t));
    v(i) = integral(future_value, 0, 30);
    fprintf('k = %.2f, FutVal = %.2f\n', k_values(i), v(i));
end

% Try to run an optimizer on the k value
g = @(k) profit(t, k) .* exp(0.05 * (30 - t));



