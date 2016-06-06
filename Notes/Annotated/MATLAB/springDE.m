function dw_dt = springDE(t, w, m, k, c)

dw_dt = zeros(2, 1);  % column vector, 2=#rows, 1=#cols
dw_dt(1) = w(2);
dw_dt(2) = (1/m)*(-c * w(2) - k * w(1));
