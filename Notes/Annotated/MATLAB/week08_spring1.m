close all
m = 2; % kg
c = 20;  % N/(m/s)
k = 25;  % N /m

DE = @(t, w) springDE(t, w, m, k, c);

tspan = [0, 30];
w0 = [0.4, 0];  % initial pos, vel
[t, w] = ode45(DE, tspan, w0);
plot(t, w(:,1) );