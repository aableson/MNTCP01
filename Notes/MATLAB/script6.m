% Solving for the launch angle

x = 30;
y0 = 3;
v = 20;
g = 9.8;


a = 17; % guess at the starting angle
for (i = 1:100)
   fa = y0 + tand(a) * x -(1/2)*g/v^2 * x^2 /( cosd(a))^2;
   fpa = (secd(a))^2*x - g*x^2/v^2 * sind(a)/ (cosd(a))^3;
   
   c = a - fa/fpa;
   a = c
end