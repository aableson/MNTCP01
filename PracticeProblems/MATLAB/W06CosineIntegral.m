clc
%% Evaluating the integral of cos(x) between x=0 and x=6
% using LEFT(n)

a = 0; % limits of integration
b = 6;
f = @(x) cos(x); % function we are integrating
format long;  % show more digits after the decimal
exact_integral = sin(6) - sin(0);  % by using anti-derivatives

%% n = 20 case
n = 20;
dx = (b-a)/n;
I1 = 0;  % value where we will store the integral estimate
for (i = 1:n)
    xim1 = a + (i-1)*dx;  % get the x coordinate for this interval
    I1 = I1 + f(xim1) * dx; % add f(x_i) * delta x to the total
end
I1
Err1 = (I1 - exact_integral)

%% n = 200 case
n = 200;
dx = (b-a)/n;
I2 = 0;  % value where we will store the integral estimate
for (i = 1:n)
    xim1 = a + (i-1)*dx;  % get the x coordinate for this interval
    I2 = I2 + f(xim1) * dx; % add f(x_i) * delta x to the total2
end
I2
Err2 = (I2 - exact_integral)

% n = 2000 case
n = 2000;
dx = (b-a)/n;
I3 = 0;  % value where we will store the integral estimate
for (i = 1:n)
    xim1 = a + (i-1)*dx;  % get the x coordinate for this interval
    I3 = I3 + f(xim1) * dx; % add f(x_i) * delta x to the total2
end
I3
Err3 = (I3 - exact_integral)


    
