function dw_dt = tankSystem1(t, w)

dw_dt = zeros(2, 1);
% w(1) = S_A, and w(2) = S_B
dw_dt(1) = (-7/100*w(1)) + (2/200)*w(2) + 35;
dw_dt(2) = (3/100*w(1)) - (10/200)*w(2) + 21;

