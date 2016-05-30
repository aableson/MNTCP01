% Time in minutes for one day
close all;
t = 0:5:(24*60);
t = t/60;

% power can be up to 22 MW based on internet searches
% We'll go with 8-10 MW, running for 2-3 hour bursts
% little spike at the startup
ton = [2, 7, 14];
toff = [4, 10, 16.5];
tactive = zeros(size(t));
tstartup = zeros(size(t));

for (j = 1:length(ton))
    tactive = tactive | ( t > ton(j) & t < toff(j));
    tstartup = tstartup  | (t > ton(j) & t < (ton(j) + 1/5));
end
% plot(t, tactive);
% hold on
% plot(t, tstartup);

% Generate the power consumption values
rng(5489,'twister')
f = zeros(size(t));
f(tactive) = f(tactive) + 8 + 0.8*randn(1, sum(tactive));
f(tstartup) = f(tstartup) + 4+0.5*randn(1, sum(tstartup));
plot(t, f);

% Generate the csv file
csvwrite('../week06CrusherData.csv', [t; f]');




