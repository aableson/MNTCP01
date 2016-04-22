% Solving for the launch angle
close all;

y0 = 3; % m
v = 20; % m/s;
x = 24; % target x
g = 9.8;

a = 20; % 20 degrees
a = a/180*pi; % convert to radians

for (i = 1:10)
    fa = y0 + x * tan(a) - (1/2)*g*x^2/v^2 / ( cos(a) )^2;
    fpa = x * (sec(a))^2 - g*x^2/v^2 * sin(a)/( cos(a) )^3;
    
    c = a - fa/fpa;
    
    a = c
    
end

a_deg = a * 180/pi

% draw the graph 
x = linspace(0, 24);
y = y0 + x * tan(a) - (1/2)*g*x.^2/v^2 / ( cos(a) )^2;
plot(x, y);