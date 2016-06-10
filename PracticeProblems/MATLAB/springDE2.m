function dw_dt = springDE2(t, w)
m = 0.5; % kg
k = 10;  % N/m

dw_dt = zeros(2, 1);
dw_dt(1) = w(2);
dw_dt(2) = (1/m)*(-k*w(1));

