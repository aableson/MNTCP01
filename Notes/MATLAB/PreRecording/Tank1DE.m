function dC_dt = Tank1DE(t, C, VA, VB)

dC_dt = zeros(2, 1);
dC_dt(1) = (1/VA)*(5*30 - 5*C(1));
dC_dt(2) = (1/VB) * (5*C(1) - 5*C(2));