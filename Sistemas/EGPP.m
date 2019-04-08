function [A, b, Au] = EGPP(A, b)
  Au = [A b]
  n = size(Au,2);
  for j = 1 : n - 1
    pivo = max(Au(:, j))
    l = find(Au(:,j) == pivo);
    for i = 1 : n - 1
      if (i != l(j))
         Au(i, :) = -(Au(i, j) / pivo) * Au(l, :) + Au(i, :)
      endif
    endfor
  endfor
b = Au(:, end);
A = Au;
A(:, end) = [];
endfunction
