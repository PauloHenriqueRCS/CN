function [A,Det,CondErro] = CH(A)

n = length(A);
CondErro = 0;
Det = 1;

for j=1 : n
  Soma = 0;
    for k=1 : j-1
      Soma = Soma + A(j,k)^2;
    endfor
  t = A(j,j)-Soma;
  if t>0
    A(j,j) = sqrt(t);
    r = 1/A(j,j);
    Det = Det*t;
  else
    CondErro = 1;
    disp(' matriz nao definida positiva');
    break
  endif
  
  for i=j+1 : n
    Soma = 0;
    for k=1 : j-1
      Soma = Soma + A(i,k)*A(j,k);
    endfor
  A(i,j) = (A(i,j)-Soma)*r;
endfor

endfunction