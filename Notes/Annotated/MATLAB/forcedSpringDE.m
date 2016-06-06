function dw_dt = forcedSpringDE(t, w, m, k, c, A, B)

dw_dt = zeros(2, 1);  % 2 row/1 col column vector 
dw_dt(1) = w(2);
dw_dt(2) = (1/m)*(-k*w(1) - c * w(2) + A *sin(B*t));
