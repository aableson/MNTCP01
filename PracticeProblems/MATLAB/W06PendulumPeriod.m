% Compute integral describing the period of the pendulum

% Only put the _integrand_ in a function
% We'll actually compute T later
g = 9.8;
L = 2;
theta0 = 40/180*pi;
k = sin(0.5*theta0);

f = @(x) 1./sqrt(1 - k^2 *(sin(x)).^2);

% Compute the period, using the integral
% T = 4 sqrt(L/g) * int(f, 0, pi/2)
T = 4 * sqrt(L/g) * integral(f, 0, pi/2);
% Print out L, theta and the period
'L, theta, period'
[L, theta0/pi*180, T]

% Now compute the integral, using a smaller initial angle.
% NOTE: you need to re-define f to make this work correctly.
L = 2;
theta0 = 20/180*pi;
k = sin(0.5*theta0);

f = @(x) 1./sqrt(1 - k^2 *(sin(x)).^2);
T = 4 * sqrt(L/g) * integral(f, 0, pi/2);
[L, theta0/pi*180, T]

% ************************************************
L = 2.5;
theta0 = 40/180*pi;
k = sin(0.5*theta0);

f = @(x) 1./sqrt(1 - k^2 *(sin(x)).^2);
T = 4 * sqrt(L/g) * integral(f, 0, pi/2);
[L, theta0/pi*180, T]
% ************************************************
L = 2.5;
theta0 = 20/180*pi;
k =sin(0.5*theta0);

f = @(x) 1./sqrt(1 - k^2 *(sin(x)).^2);
T = 4 * sqrt(L/g) * integral(f, 0, pi/2);
[L, theta0/pi*180, T]
