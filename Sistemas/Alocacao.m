function [x] = Alocacao(N)
%"Sem Pré-Alocação\n"
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

%"Com Pré-Alocação\n"
title ("Sem Pré-alocação(RED) VS Com Pré-alocação(BLUE)");
grid on;
plot (1:N,spa,"ro-"), hold on;
plot (1:N,cpa,"bo-");

xlabel("n");
ylabel("Elapsed Time");

clear a b k n  ;


endfunction
