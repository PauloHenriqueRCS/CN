function [A, b, Au] = EGPP(A, b)
  printf("ELIMINAÇÃO DE GAUSS \n");
  Au = [A b];
  n = length(Au);
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
    endif
  endfor
  
  for i = j : n - 1
    if (i != j)
     printf("L%d = - L%d / pivo * L%d + L%d \n", i,i,j,i);
     Au(i, :) = - Au(i, j) / pivo * Au(j, :) + Au(i, :)
    endif
  endfor
endfor

  b = Au(:, end);
  A = Au;
  A(:, end) = [];
  printf("Matriz aumentada Au\n");
  Au
  endfunction