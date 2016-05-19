total = 0;
n = 1000;
a= 1;
b = 4;
dx = (b-a)/n;
for (i = 1:n)
    x = a + (i-1)*dx;
    fx = 5 - 2*x + 3*x^2;
    total = total + fx * dx;
end
total
