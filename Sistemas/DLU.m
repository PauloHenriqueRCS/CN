function x = DLU(A,b)
 % Algoritmo para a tecnica Eliminacao de Gauss retornando L e U
 Au = [A b];
 n = length(A);
 L = eye(length(A));
 for j = 1 : n - 1
   for i = j : n - 1
     calc = Au(i + 1, j) / Au(j, j)
     Au(i + 1, :) = -(calc) * Au(j, :) + Au(i + 1, :);
     L(i+1,j) = calc;
   endfor
 endfor
 U = Au;
 U(:, end) = [];
 y = SS(L,b);
 x = SR(U,y');
endfunction
