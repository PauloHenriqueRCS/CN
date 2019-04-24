function [PI] = InterQ(x,y,p)
n = length(p);
B = ones(length(x),1);
A = [x(:) x(:).^2];
A = [B A];

[L, U, P, Y, X, Residuo] = DLUPP(A,y');

for i = 1 : n
 PI(i) = X(1) + X(2)*p(i) + X(3)*p(i)^2;
endfor
endfunction