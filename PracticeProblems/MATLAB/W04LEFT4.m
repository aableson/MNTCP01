total = 0;
n = 1000;
a= 0;
b = 1;
dx = (b-a)/n;
for (i = 1:n)
    x = a + (i-1)*dx;
    fx = 1 + (1/2)*x^4 - (2/5)*x^9;
    total = total + fx * dx;
end
total
