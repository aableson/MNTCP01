% Time in seconds for 6 minutes
close all;
t = 0:0.05:(6*60);

% Cart starts at a standstill, then has different accelerations
% We'll have in principle an exact stop at the end, but then add noise
% 
tchange = [20, 60, 100, 200, 300];
vchange = [0.5, 0.6, 1.5, 0.6, -3.2];
timechange = [10, 20, 60, 5, 30];
a = zeros(size(t));
for (i = 1:length(tchange))
    tactive = t > tchange(i) & t < (tchange(i) + timechange(i));
    a(tactive) = vchange(i)/timechange(i);  
end
plot(t, v);

% % Generate the power consumption values
rng(5489,'twister')
a = a + 0.0005 * randn(size(a));
plot(t, a);

% Generate the csv file
csvwrite('../week06CartAcceleration.csv', [t; a]');

plot(t, cumsum(v))