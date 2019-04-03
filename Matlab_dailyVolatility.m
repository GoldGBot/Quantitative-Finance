% This scripts computes the daily volatility for IBM stock in 2010

% file: IBM_Stock_2010.xlsx - price and dividend data for IBM in 2010

clear;
clc;

%load price
file_name = 'IBM_Stock_2010.xlsx';     
ibm_data = readtable(file_name);
price = ibm_data.PriceOrBid_AskAverage; 

% Vectorized in two different ways - the diff() function gets the first
% difference of a vector of values. 
%continuous_daily_returns = ( price(2:end)-price(1:end-1) ) ./ price(1:end-1);
continuous_daily_returns = ( diff(price) ) ./ price(1:end-1);
%diff(price)

%volatility is the return not the price


% %Non-vectorized version
% number_of_days = length(price);
% continuous_daily_returns = zeros(number_of_days-1,1);
% 
% for day = 1:(number_of_days-1)
%     continuous_daily_returns(day) = (price(day+1)-price(day))/price(day);
% end


% with Matlab built-in function
daily_volatility = std(continuous_daily_returns);

format short;
disp('IBM Daily Volatility in 2010')
disp(daily_volatility);