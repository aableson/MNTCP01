% W02Newton1.m
% Solves x^3 = 5, or
% x^3 - 5 = 0
% f(x) = x^3 - 5
% f'(x) = 3x^2 

a = 2;  % first rough solution estimate
for (i = 1:10)
    fa = a^3 - 5;
    fpa= 3 * a^2;
    c = a - fa/fpa;
    a = c
end    