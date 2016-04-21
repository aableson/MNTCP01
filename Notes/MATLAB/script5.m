% Newton's method solving

a = 4;  % initial estimate of solution
for (i = 1:10)
    fa = exp(a/2) -a - 10;
    fpa = (0.5)*exp(a/2) - 1;
    c = a - fa / fpa;  % Newton's method update formula
    
    % write the new c value over top of the original 'a' value
    a = c 
end

% check the value by subbing into the original equation
format long
exp(a/2)
a + 10