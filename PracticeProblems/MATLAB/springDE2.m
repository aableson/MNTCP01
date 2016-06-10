function dw_dt = springDE1(t, w, m, k, a, b)
dw_dt = zeros(2, 1);
dw_dt(1) = w(2);
dw_dt(2) = (1/m)*(-k*w(1) + a * sin(b*t));

