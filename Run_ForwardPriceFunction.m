% QFA
% Topic 1 Matlab

%This script computes the foward price
%Assume interest rate constant, no dividend 

clear;   
clc;
format bank;

% Parameters
interest_rate = 0.1; % annual rate, continiously compounded
time_to_maturity = 1; % the time to maturity, year
spot_price = 40; % USD

% compute the forward price
%forward_price = spot_price * exp(interest_rate*time_to_maturity); 
% use the function to compute the forward price
forward_price = get_forward_price(spot_price,interest_rate,...
                                                         time_to_maturity);

disp('the forward price (in USD) is:');
disp(forward_price);