function dw_dt = beamDE1(x, w, E, I, p)
dw_dt = zeros(4, 1);

dw_dt(1) = w(2);
dw_dt(2) = w(3);
dw_dt(3) = w(4);
dw_dt(4) = -p/(E*I);

