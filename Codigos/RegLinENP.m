function [b,r2,sigma2,CondErro] = RegLinENP(n,v,p,x,y)

%objetivo: calcular parametros de minimos quadrados de modelo linear multiplo via equacoes normais
  if ((v>1) & (v+1~=p))
    condErro = 1;
    return;
  endif
  condErro = 0;
  vp1 = v + 1;
  pm1 = p - 1;
  for i = 1:n
    for j = vp1:-1:2
      x(i,j) = x(i,j-1);
    endfor
    x(i,1) = 1;
  endfor
  if ((v==1)&(p>2)) %se reg. pol. entao gera potencias de x
    for j = 2:pm1
      jp1 = j+1;
      for i = 1 : n
        x(i,jp1) = x(i,2)^j
      endfor
    endfor
  endif
  %equacoes normais
  for i = 1 : p
    for j = 1 : p
      soma = 0;
      for k = 1: n
        soma = soma + x(k,i)*x(k,j);
      endfor
      Sxx(i,j) = soma;
    endfor
    soma = 0;
    for k = 1 : n
      soma = soma + x(k,i)* y(k);
    endfor
    Sxy(i) = soma;
  endfor
  [L,Det,condErro] = CH(Sxx);
  t = SS(L,Sxy);
  for i = 1 : p
    for j = 1 : i
      U(j,i) = L(i,j); %U = transposta de L
    endfor
  endfor
  b = SR(U,t);
  D = 0;
  Sy2 = 0;
  for i = 1 : n
    u = 0;
    for j = 1: p
      u = u + b(j)*x(i,j);
    endfor
    d = y(i) - u;
    D = D + d^2;
    Sy2 = Sy2 + y(i)^2;
  endfor
  r2 = 1-D/(Sy2 - Sxy(1)^2/n);
  sigma2 = D / (n-p);
  
endfunction