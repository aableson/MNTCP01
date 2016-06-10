function dw_dt = springDE1(t, w, m, k)
dw_dt = zeros(2, 1);
dw_dt(1) = w(2);
dw_dt(2) = (1/m)*(-k*w(1));

