function dw_dt = springDEDampedAndForced(t, w, m, k, c, b)
dw_dt = zeros(2, 1);
dw_dt(1) = w(2);
dw_dt(2) = (1/m)*(-k*w(1) -c*w(2) + sin(b*t));

