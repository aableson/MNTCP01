close all;
M = csvread('week06CrusherData.csv');
t = M(:, 1);
P = M(:, 2);
plot(t, P);
hold on;
dt = M(2, 1) - M(1,1);

n = length(M)-1;  % 288 intervals

E = 0;
for (i = 1:n)
    E = E + P(i) * dt;
end
E

% add the average line
A = mean(P);
plot([0, 24], [A, A], 'r');