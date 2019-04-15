function [L, U, P, y, x, r] = DLUPP(A,b)

 Au = [A b];
 n = length(Au);
 L = eye(n - 1);
 p = zeros(1,n - 1);

for j = 1 : n - 1
  pivo = Au(j, j);
  p(j) = j;
  for k = j + 1 : n - 1
    if (max(Au(k, j)) > pivo)
      swapLine = k;
      pivo = Au(k, j);
      aux =  Au(j, :);
      Au(j, :) = Au(swapLine, :);
      Au(swapLine, :) = aux;
    endif
  endfor

count = 1;
  for i = j : n - 1
    if (i != j)
       m(count,j) = Au(i, j) / pivo;
       Au(i, :) = - m(count,j) * Au(j, :) + Au(i, :);
       count++;
    endif
  endfor
endfor
%conseguir calcular esse miseravel
p = [1 3 2];
for e = 1 : n - 1
  P(e,p(e)) = 1;   
endfor

U = Au;
U(:,end) = [];
m(:,2) = flipud(m(:,2));

sizem = length(m);
for i = 1 : sizem
   for j = 1 : sizem
       if (i+1 != j)
       L(i+1,j) = m(i,j);
       endif
   endfor
 endfor

y = SS(L,(P*b))';
x = SR(U,y')';
r = SLResiduo(A,b,x');


endfunction