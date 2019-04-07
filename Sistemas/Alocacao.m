function [x] = Alocacao(N)
%"Sem Pr�-Aloca��o\n"
n = 1;
spa = zeros(1,N); 
cpa = zeros(1,N);  
  
while(n <= N)
  tic();
  for k = 1 : n 
   a(k,1) = k^2;
  endfor
  spa(n) = toc();
n++;
endwhile 

n = 1;

tic();
b = zeros(n,1);
while(n <= N)
  for k = 1 : n 
   b(k) = k^2;
  endfor
  cpa(n) = toc();
n++;
endwhile 

%"Com Pr�-Aloca��o\n"
title ("Sem Pr�-aloca��o(RED) VS Com Pr�-aloca��o(BLUE)");
grid on;
plot (1:N,spa,"ro-"), hold on;
plot (1:N,cpa,"bo-");

xlabel("n");
ylabel("Elapsed Time");

clear a b k n  ;


endfunction
