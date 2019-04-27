function [x, L, U, P, y, Residuo] = DLUPP(A,b)
 Au = [A b];
 n = length(Au);
 L = eye(n - 1);
 m = zeros(length(A));
 p = 1:n-1;
for j = 1 : n - 1
  pivo = Au(j, j);
  for k = j + 1 : n - 1
    if (max(Au(k, j)) > pivo)
      swapLine = k;
      pivo = Au(k, j);
      aux =  Au(j, :);
      Au(j, :) = Au(swapLine, :);
      Au(swapLine, :) = aux;
      swapLine = p(j);
      p(j) = p(k);
      p(k) = swapLine;
    endif
  endfor

  for i = j : n - 1
    if (i != j)
     m(i,j) = Au(i, j) / pivo;
     Au(i, :) = - m(i,j) * Au(j, :) + Au(i, :);
    endif
  endfor
endfor

for i = 1 : n-2
   for j = 1 : i
   L(i+1,j) = m(i+1,j);
   endfor
endfor

for e = 1 : n - 1
  P(e,p(e)) = 1 ;
endfor

U = Au;
U(:,end) = [];
format bank;
y = SS(L,P*b)';
x = SR(U,y')';
Residuo = SLResiduo(A,b,x');

endfunction