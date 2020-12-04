clear;clc;

x = csvread('expense.csv');

min = min(x);

is = [];
js = [];

for i = 1:length(x)
  for j = 1:length(x)
    if i ~= j
      if x(i) + x(j) <= 2020-min
        is = [is i];
        js = [js j];
      endif
    endif
  endfor
endfor

for n = 1:length(is)
  i = is(n);
  j = js(n);
  for k = 1:length(x);
    if k ~= i && k ~= j && x(k)+x(i)+x(j)== 2020
      e1 = x(i);
      e2 = x(j);
      e3 = x(k);      
    endif
  endfor
endfor

fprintf('Product = %.0f',e1*e2*e3)