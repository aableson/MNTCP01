% Solution to garage temperature problem
close all;

k = 0.1;
Text = @(t) (10 + 7 *cos(pi/12*t));
f =@(t, T) -k*(T - Text(t));
T0  = 23;
tn = 24 * 5; % # of hours in 5 days

[t, y] = ode45(f, [0,tn], T0);
plot(t, y);
hold all;

title('Plot of temperature vs time', 'fontsize', 20);
xlabel('Time (hours)', 'fontsize', 16);
ylabel('Temperature (Celsius)', 'fontsize', 16);


%% *************** HALF HEAT FLOW **************
hold off;
k = k/2; % divide heat flow in half

% Re-define the DE, using the new k value
f =@(t, T) -k*(T - (10 + 7 *cos(pi/12*t)));

% Simulate the temperature from t=0..tn
[t2, y2] = ode45(f, [0,tn], T0);

% Plot the resulting graph of temp vs time
plot(t, y);
hold all;
plot(t2, y2);
legend({'Original k', 'Half k'}, 'fontsize', 16);

title('Plot of temperature vs time (half heat flow)', 'fontsize', 20);
xlabel('Time (hours)', 'fontsize', 16);
ylabel('Temperature (Celsius)', 'fontsize', 16);



