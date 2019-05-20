% Algoritmo para a tecnica Eliminacao de Gauss
function [A, b, Au] = EG(A, b)
  Au = [A b];
  n = length(A);
  for j = 1 : n - 1
    for i = j : n - 1
      Au(i + 1, :) = -(Au(i + 1, j) / Au(j, j)) * Au(j, :) + Au(i + 1, :);
    endfor
  endfor
  b = Au(:, end);
  A = Au;
  A(:, end) = [];
endfunction