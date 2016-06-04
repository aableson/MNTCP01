% Example of the LEFT(1000) for different functions.

%% integral from 0 to 5 of x^3 - 5
clc
f = @(x) x.^3 - 5;
a = 0;
b = 5;
n = 1000;
dx = (b-a)/n;
exact_value = (5^4/4 - 5*5);
LEFT = 0;
for (i = 1:n)
    xim1 = a + (i-1)*dx;
    LEFT = LEFT + f(xim1) * dx;
end
[exact_value, LEFT]

%% integral from 1 to 10 of   log_{10}(x)
clc
f = @(x) log10(x);
a = 1;
b = 10;
n = 1000;
dx = (b-a)/n;
exact_value = 10 - (10/log(10)) + 1/log(10);
LEFT = 0;
for (i = 1:n)
    xim1 = a + (i-1)*dx;
    LEFT = LEFT + f(xim1) * dx;
end
[exact_value, LEFT]

%% integral from -1 to 1 of x^2 e^(x^3)
clc
f = @(x) x.^2 .* exp(x.^3);
a = -1;
b = 1;
n = 1000;
dx = (b-a)/n;
exact_value = (1/3) * ( exp(1)-exp(-1));
LEFT = 0;
for (i = 1:n)
    xim1 = a + (i-1)*dx;
    LEFT = LEFT + f(xim1) * dx;
end
[exact_value, LEFT]
