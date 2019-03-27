function [A] = EG (A,b)
  n = size(A,1);
  Au = [A b];
    for j = 1 : n - 1
      for i = j : n - 1
      Au(i + 1,:) = -(Au(i + 1, j) / Au(j, j)) * Au(j, :) + Au(i + 1, :);
   endfor
  endfor
  A = Au;
  
endfunction