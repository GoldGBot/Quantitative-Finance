function total_payoff = get_butterfly_spread_payoff(s, k)
% this function computes the payoff of a butterfly spread
%
% s - vector of stock prices
% k - a three-element vector of strike prices [k1 k2 k3]

%Vectorized
call_payoff1 = max(s-k(1),0);
call_payoff2 = max(s-k(2),0);
call_payoff3 = max(s-k(3),0);
total_payoff = call_payoff1 - 2*call_payoff2 + call_payoff3;