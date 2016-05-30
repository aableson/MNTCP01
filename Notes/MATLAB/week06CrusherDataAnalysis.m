close all;
M = csvread('week06CrusherData.csv');
t = M(:, 1);
P = M(:, 2);
plot(t, P);
