%
close all;
DE = @(t, Q) 5e6*(2 + sin(2*t)) - 5e6*(Q/10e6);
tspan = [0, 20];
for (Q0 = 0:2.5e7:5e7)
    [t, Q] = ode45(DE, tspan, Q0);
    plot(t, Q);
    hold on;
    xlabel('Time (years)');
    ylabel('Amt (g) of chemical in lake');
end