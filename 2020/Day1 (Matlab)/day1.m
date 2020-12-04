clear;clc;

x = csvread('expense.csv');

for i = 1:length(x)
  for j = 1:length(x)
    if i ~= j && x(i)+x(j) == 2020
      e1 = x(i);
      e2 = x(j);
    endif
  endfor
endfor

fprintf('Product = %.0f',e1*e2)