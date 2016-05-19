total = 0;
n = 1000;
a= -1;
b = 1;
dx = (b-a)/n;
for (i = 1:n)
    x = a + (i-1)*dx;
    fx = x^100;
    total = total + fx * dx;
end
total
