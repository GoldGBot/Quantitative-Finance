function [B, y] = get_bond_price(face_value, coupon_rate, r, t)
% Compute the bond price and yield
%
%input parameters
% coupon_rate - coupon rate, per annum, paid semiannually
% r - VECTOR of zero rates
% t - VECTOR of times at which cash flows are paid out
%
%output parameters
% B - bond price
% y - yield
%


%construct cash flows from coupon rate
%cash flows are the semiannual coupon payment (0.5*coupon_rate*face_value),
%with the last cash flow including the principle value
cash_flows = 0.5*coupon_rate*face_value*ones(size(t));
cash_flows(end) = cash_flows(end) + face_value;

B = sum(cash_flows.*exp(-r.*t)); %compute bond price

%compute yield with an anonymous function, using 6% (0.06) as the initial
%guess
y = fzero(@(y)sum(cash_flows.*exp(-y*t))-B,0.07);
%@ annomy function y is unknow primeter
%inline function t B inthe function know all the value



