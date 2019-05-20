function [L, U, P, y, x, Residuo] = DLUPP(A,b)
printf("DECOMPOSIÇÃO LU \n");
 Au = [A b];
 n = length(Au);
 L = eye(n - 1);
 m = zeros(length(A));
 p = 1:n-1;
for j = 1 : n - 1
  pivo = Au(j, j);
  printf("Pivo = Au(%d,%d) -> %d \n", j,j,pivo);
  for k = j + 1 : n - 1
    if (max(Au(k, j)) > pivo)
      swapLine = k;
      pivo = Au(k, j);
      printf("Novo Pivo = Au(%d,%d) -> %d \n", k,j,pivo);
      printf("Linha L%d swap L%d \n", j,k);
      aux =  Au(j, :);
      Au(j, :) = Au(swapLine, :)
      Au(swapLine, :) = aux
      swapLine = p(j);
      p(j) = p(k);
      p(k) = swapLine;
    endif
  endfor
  printf("p(%d) = %d\n",j,p(j));

  for i = j : n - 1
    if (i != j)
     m(i,j) = Au(i, j) / pivo;
     printf("L%d = - L%d / %d * L%d + L%d \n", i,i,pivo,j,i);
     Au(i, :) = - m(i,j) * Au(j, :) + Au(i, :)
    endif
  endfor
endfor

for i = 1 : n-2
   for j = 1 : i
     printf("L(%d,%d) = m(%d,%d)\n",i+1,j,i+1,j);
   L(i+1,j) = m(i+1,j)
   endfor
endfor

for e = 1 : n - 1
  printf("P(%d,p(%d)) = 1 \n", e,p(e));
  P(e,p(e)) = 1 
endfor

U = Au;
U(:,end) = []
L
P
format bank;
printf("Susbstituição Suscessiva (L,P*b)\n");
y = SS(L,P*b)'
printf("Substiyuição Retroativva (U,y)\n");
x = SR(U,y')'
Residuo = SLResiduo(A,b,x')

endfunction