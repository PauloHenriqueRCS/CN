function [A, b, Au] = EGPP(A, B)

Au = [ A B ];
n = length(Au);
  
for j = 1 : n - 1
  pivo = Au(j, j);
  for k = j + 1 : n - 1
    if (abs(Au(k, j)) > pivo)
      swapLine = k;
      pivo = Au(k, j);
      aux =  Au(j, :);
      Au(j, :) = Au(swapLine, :);
      Au(swapLine, :) = aux;
    endif
  endfor

  for i = j : n - 1
    if (i != j)
       Au(i, :) = -(Au(i, j) / pivo) * Au(j, :) + Au(i, :);
    endif
  endfor
endfor

b = Au(:, end);
A = Au;
A(:, end) = [];

endfunction