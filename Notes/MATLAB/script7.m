% Practicing with Newton's method

%% solving x e^(-x) = 5
close all
x = linspace(-3, 3);
y = x .* exp(-x) - 5;
plot(x, y);