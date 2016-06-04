% Example of the LEFT(1000) for different functions.

%% integral from 0 to 5 of x^3 - 5
clc
format long
f = @(x) x.^3 - 5;
a = 0;
b = 5;
I = integral(f, a, b);
exact_value = (5^4/4 - 5*5);
[exact_value, I]

%% integral from 1 to 10 of   log_{10}(x)
clc
format long
f = @(x) log10(x);
a = 1;
b = 10;
exact_value = 10 - (10/log(10)) + 1/log(10);
I = integral(f, a, b);
[exact_value, I]

%% integral from -1 to 1 of x^2 e^(x^3)
clc
format long
f = @(x) x.^2 .* exp(x.^3);
a = -1;
b = 1;
exact_value = (1/3) * ( exp(1)-exp(-1));
I = integral(f, a, b);
[exact_value, I]
