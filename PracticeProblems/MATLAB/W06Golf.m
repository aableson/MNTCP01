% Compute the area of the pool

% Store the widths of the pool, using zeros at the ends!
% we need to count the areas in the last intervals as well
w = [0 6.2 7.2 6.8 5.6 5.0 4.8 4.8 0];

% Use a loop to compute the Simpson's rule estimate of the area
% dx = 2 m, from the question
dx = 2;
n = length(w) -1;  % # intervals = # points - 1
I = 0;
for (i = 1:2:n)
    I = I + (w(i) + 4*w(i+1) + w(i+2))/6 * 2*dx;
end
fprintf('Surface area of pool is approximately %.5g m^2\n', I);
    