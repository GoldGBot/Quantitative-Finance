% This scripts computes the daily returns for IBM stock in 2010

% file: IBM_Stock_2010.xlsx - price and dividend data for IBM in 2010

clear;
clc;

%load price and dividend from the Excel file
file_name = 'IBM_Stock_2010.xlsx'; 
%Two different ways to read the data from the Excel file
%This way gets vectors. 
% price = xlsread(file_name,1,'e2:e253'); 
% dividend = xlsread(file_name,1,'f2:f253');

%This way gets a data structure called a table that offers a lot of
%functionality. 
ibm_data = readtable(file_name);%create table object
price = ibm_data.PriceOrBid_AskAverage;
dividend = ibm_data.DividendCashAmount;

number_of_days = length(price);

daily_returns = (price(2:end)+dividend(2:end))./price(1:end-1)-1;

% %alternative way to calculate daily return in a for loop
% daily_returns = zeros(number_of_days-1,1);
% for day = 1:(number_of_days-1)
%     daily_returns(day) = (price(day+1)+dividend(day+1))/price(day)-1;
% end

day_number = 1:(number_of_days-1);
plot(day_number,daily_returns, 'o')

title = {'Daily Return'};
xlswrite(file_name,title,1,'g1');
xlswrite(file_name,daily_returns,1,'g2:g252');
