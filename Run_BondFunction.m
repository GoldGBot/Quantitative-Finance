clear;clc;
coupon_rate = 0.06;
r = [5.0 5.8 6.4 6.8]/100;
t = 0.5:0.5:2;
principal = 100;
[B,y] = get_bond_price(principal,coupon_rate,r,t);

% B = get_bond_price(principal,coupon_rate,r,t); %gets bond price only (no yield)


format bank;
disp('Bond Price:');
disp(B);
format short;
disp('Yield:');
disp(y);


%help fzero()