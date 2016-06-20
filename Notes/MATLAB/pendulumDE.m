function dw_dt = pendulumDE(t, w, g, L, mu)

dw_dt = zeros(2, 1);

dw_dt(1) = w(2);
dw_dt(2) = -(g/L) * sin(w(1)) - mu * w(2);
