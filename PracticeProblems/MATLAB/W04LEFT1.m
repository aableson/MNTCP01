total = 0;
n = 1000;
a= -1;
b = 2;
dx = (b-a)/n;
for (i = 1:n)
    x = a + (i-1)*dx;
    fx = x^3 - 2*x;
    total = total + fx * dx;
end
total
