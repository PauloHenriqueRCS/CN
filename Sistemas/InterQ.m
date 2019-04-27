function [P] = InterQ(x,y,p)
  
n = length(p);
B = ones(length(x),1);
A = [x(:) x(:).^2];
A = [B A];
X = DLUPP(A,y');

for i = 1 : n
 P(i) = X(1) + X(2)*p(i) + X(3)*p(i)^2;
endfor

endfunction