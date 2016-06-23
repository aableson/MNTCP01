function dw_dt = tankSystem2(t, w, k, VA, VB, VC)

dw_dt = zeros(3, 1);
% w(1) = C_A, w(2) = C_B, and w(3) = C_C
dw_dt(1) = k/VA*w(3) - k/VA*w(1);
dw_dt(2) = k/VB*w(1) - k/VB*w(2);
dw_dt(3) = k/VC*w(2) - k/VC*w(3);

