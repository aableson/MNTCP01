close all;

M = csvread('week06CartAcceleration.csv');

t = M(:, 1);
a = M(:, 2);
plot(t, a);

dt = M(2,1) - M(1, 1);  % 2nd row - 1st row in column 1 = Delta t.

n = length(M) - 1;

change_in_v = 0;
for (i = 1:n)
    change_in_v = change_in_v + a(i)*dt;
end
change_in_v

mean(a)