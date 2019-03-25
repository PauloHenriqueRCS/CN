function x = EG (A,b)
  n = size(A,1);
  Au = [A b];
  for i = 2 : 1 : n - 1
   for j = 1 : 1 : n - 1
      Au(i,j) = (Au(j,i)/Au(j-1,i)*-1) * Au(j-1,:) + Au(j,:);
   endfor
  endfor
endfunction