function [x] = DLUPP(A,b)
 % Algoritmo para a tecnica Eliminacao de Gauss retornando L e U
 Au = [A b];
 n = length(A);
 L = eye(length(A));
 p = flip(1:1:length(A));
 m = zeros(length(A));
 P = zeros(length(A));
 
 for j = 1 : n - 1
   pivo = max(Au(:, j));
   l = find(Au(:,j) == pivo);
   for i = 1 : n - 1
      if (i != l)
         m(i,j) = Au(i, j) / pivo;
         Au(i, :) = -(m(i,j)) * Au(l, :) + Au(i, :);   
      endif  
   endfor
 endfor
 
 U = Au;
 U(:,end) = [];
 U = flipud(U);
 
 for k = 2 : n 
   for l = 1 : n - 1
     if (k == l)
       continue;
     else
       L(k,l) = m(p(k),l);
     endif
   endfor
 endfor
 
 for e = 1 : n
   P(e,p(e)) = 1;   
 endfor

y = SS(L,(P*b));
x = SR(U,y')';
 
endfunction
