function [A, b, Au] = EGPP(A, b)
  Au = [A b];
  n = length(Au);
  for j = 1 : n - 1
    pivo = max(abs(Au(:, j)));
    l = find(Au(:,j) == pivo);
     if (j == 1)
     aux = Au(l(1),:)
     Au(l(1),:) = Au(1,:);
     Au(1,:) = aux;
     l = find(Au(:,j) == pivo);
     endif
    for i = 1 : n - 1
      if (i != l(1))
         Au(i, :) = -(Au(i, j) / pivo) * Au(l(1), :) + Au(i, :)
         Au;
      endif
    endfor
  endfor
b = Au(:, end);
A = Au;
A(:, end) = [];
endfunction
