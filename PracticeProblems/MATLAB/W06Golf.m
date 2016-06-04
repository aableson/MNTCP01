% Compute the area of the fairway

% Store the widths of the fairway, using zeros at the ends!
% we need to count the areas in the last intervals as well
w = [0 80 85 95 110 105 100 100 105 100 0];

% Use a loop to compute LEFT with 
% dx = 100 ft, from the question
dx = 100;
n = length(w) -1;  % # intervals = # points - 1; should be 10
I = 0;
for (i = 1:n)
    I = I + w(i) * dx;  % note the syntax for accessing a value in an array
end
I
    