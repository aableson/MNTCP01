total = 0;
n = 1000;
b = 2; 
a = 0;
dx = (b-a)/n;
for (i = 1:n)
    xim1 = a + (i-1)*dx;
    fx = xim1^2;
    total = total + fx * dx;
end
total