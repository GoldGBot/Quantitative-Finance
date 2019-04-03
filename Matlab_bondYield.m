% 1.7 examples with fzero
clear;
clc;
format short;

% compute bond yield
tau = 0.5:0.5:2;  % time for cash flows
cash_flow = [3 3 3 103];  % cash flow

bond_price = 98.3; % market price

%declare an anonymous function for the yield
yieldFunction = @(y) sum(cash_flow.*exp(-y*tau) ) - bond_price; 

yield = fzero( yieldFunction, 0.06); % find y that makes yieldFucntion = 0

disp('Bond yield to maturity:');
disp(yield);


%interest rate
r = [5.0 5.8 6.4 6.8]/100;
face_value = 100;

%declare an anonymous function for the par yield
% c - coupon rate, paid semiannually
parYieldFunction = @(c) 0.5*c*face_value*sum( exp(-r.*tau) )...
    + face_value*exp(-r(4)*tau(4)) - face_value ;  

%calculate par yield with fzero, using 6% (0.06) as the initial guess
par_yield = fzero( parYieldFunction, 0.06);

disp('Par yield:');
disp(par_yield);