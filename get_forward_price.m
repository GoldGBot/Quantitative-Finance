function forward_price = get_forward_price(s,r,tau)
%This function computes the foward price
% s - spot price
% r - interest rate
% tau - time to maturity

forward_price = s * exp(r*tau); % compute the forward price