% W08 spring simulation 1
close all
m = 0.5; % kg
k = 10;  % N/m

% Initial conditions are x(0) = 0.2, and x'(0) = 0
% In w's, this is w0 = [0.2, 0];
w0 = [0.2, 0];
DE = @(t, y) springDE1(t, y, m, k);  % This step is required so we have a function _only_ t and y as inputs
tspan = [0, 5];  % end time was chosen by trial and error, to get around 4 cycles visible

% Run the simulation
[t, w] = ode45(DE, tspan, w0);

% Plot only the 1st column of w, which is the _position_ (2nd column =
% velocity)
plot(t, w(:,1));
