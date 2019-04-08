function [n,spa,cpa] = Alocacao()
  clear all, clc;
  spa = zeros(1,10);
  cpa = zeros(1,10);
  n = zeros(1,10);
  for i = 1 : 10
    n(i) = 10^i;
    tic();
    for k = 1 : n(i) 
      a(k,1) = k^2;
    endfor
    spa(i) = toc();
    
    tic();
    b = zeros(n(i),1);
    for k = 1 : n(i) 
      b(k) = k^2;
    endfor
    cpa(i) = toc();
  endfor
  
  grid on;
  plot (1:10,spa,"ro-"), hold on;
  plot (1:10,cpa,"bo-"), hold on;
  xlabel("10^n");
  ylabel("Elapsed Time");
  title ("Sem Pré-alocação(RED) VS Com Pré-alocação(BLUE)");
  clear a b k n spa cpa;
  
endfunction