R = 100;
p = @(r) (1/R^2) * exp(-pi * r.^2/R^2);
I = integral(p, 0, R)