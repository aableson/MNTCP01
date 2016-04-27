% Solves 10 x e^(-2x) = 4
% 10 x e^(-2x) - 4 = 0
% so 
% f(x) = 10 x e^(-2x) - 4
% f'(x) = 10 e^(-2x) + 10 x (-2) e(-2x)

% Graphing to get a rough location of the solutions
close all;
x = linspace(0, 10);
y = 10 * x .* exp(-2*x);
plot(x, y);
hold on;
plot([0, 10], [0.4, 0.4], 'k');

a = 0.1;  % first rough solution estimate
for (i = 1:10)
    fa = 10 * a .* exp(-2*a) - 0.4;
    fpa= 10 * exp(-2*a) + 10 *a * (-2) *exp(-2*a);
    c = a - fa/fpa;
    a = c;
end    
% just display the final solution
a

a = 2;  % second rough solution estimate
for (i = 1:10)
    fa = 10 * a .* exp(-2*a) - 0.4;
    fpa= 10 * exp(-2*a) + 10 *a * (-2) *exp(-2*a);
    c = a - fa/fpa;
    a = c;
end    
% just display the final solution
a

% Confirm the solutions
LHS = 10 * (0.0436)* exp(-2*0.0436)
RHS = 0.4

LHS = 10 * (1.9411)* exp(-2*1.9411)
RHS = 0.4