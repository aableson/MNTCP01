function dC_dt = Tank2DE(t, C)

dC_dt = zeros(2, 1);
dC_dt(1) = -0.09*C(1) + 0.02*C(2) + 2.1;
dC_dt(2) = 0.18*C(1) -0.18*C(2);