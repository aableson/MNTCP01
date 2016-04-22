% Landing angle 

y0 = 3;
g = 9.8;
v = 20;
x = 30;

a = 30/180*pi;
for (i = 1:10)
   fa = y0 + tan(a) * x -(1/2)*g*x^2/v^2 /( cos(a))^2;
   fpa = (sec(a))*x - g*x^2/v^2*(sin(a))/( cos(a))^3;
   c = a - fa/fpa;
   a = c
end

a * 180/pi