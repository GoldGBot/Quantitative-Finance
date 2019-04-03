% hedging
clear; clc;
format short;
spot = [0.5, 0.6 -0.22 -0.35 +0.79 0.04 0.15 0.70 -0.51 0.41]';
future = [0.56 0.63 -0.12 -0.44 +0.6 -0.06 0.01 0.8 -0.56 -0.46]';

%get the standard deviations
spot_std = std(spot); 
future_std = std(future);

% corrcoef() is a function to compute the correlation coefficients.
% the return value is a matrix. rho(1,2) and rho(2,1)are equal, and 
% these are what we need (the correlation between the spot and future
% price)
rho = corrcoef(spot, future);   
disp('correlation coefficients');
disp(rho);
h = rho(1,2)*spot_std/future_std; 

disp('the hedge ratio is:');
disp(h);