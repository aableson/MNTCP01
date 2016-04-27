% Solves for cube root of 4:
% x = 4^(1/3), or
% x^3 = 4 or
% x^3 - 4 = 0;
% f(x) = x^3 - 4
% f'(x) = 3x^2 

a = 2;  % first rough solution estimate
for (i = 1:10)
    fa = a^3 - 4;
    fpa= 3 * a^2;
    c = a - fa/fpa;
    a = c
end    