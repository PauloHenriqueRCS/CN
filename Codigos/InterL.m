function [P] = InterL(x,y,p)
  
n = length(p);

for i = 1 : n
 P(i) = y(1) + ((y(2) - y(1))/(x(2) - x(1))) * (p(i) - x(1));
endfor
  
endfunction
