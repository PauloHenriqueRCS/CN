function [L, U, P, x, y] = DLUPP(A,b)

 Au = [A b];
 n = length(Au);
 L = eye(n - 1);
 p = zeros(1,n - 1);
 m = zeros(n - 1);
 P = zeros(n - 1);
 
 for j = 1 : n - 1
  pivo = max(Au(:, j));
  l = find(Au(:,j) == pivo);
    if (length(l) > 1)
      l = l(2);
    endif  
 
    if (j == 1 && l != 1)
      aux = Au(l,:);
      Au(l,:) = Au(1,:);
      Au(1,:) = aux;
      l = 1;
    endif
    
     p(j) = l;
     
    for i = 1 : n - 1
      if (i != l)
         Au(i, :) = -(Au(i, j) / pivo) * Au(l, :) + Au(i, :);
      endif
    endfor
endfor
 

aux = Au(2,:);
Au(2,:) = Au(4,:);
Au(4,:) = aux;
aux = Au(3,:);
Au(3,:) = Au(4,:);
Au(4,:) = aux;


U = Au;
U(:,end) = [];

 for k = 2 : n - 1
   for l = 1 : n - 1
     if (k == l)
       continue;
     else
       L(k,l) = m(p(k),l);
     endif
   endfor
 endfor

 for e = 1 : n - 1
   P(e,p(e)) = 1;   
 endfor
 
y = SS(L,(P*b));
x = SR(U,y')';
 
endfunction
