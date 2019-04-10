function [n,loop,vetor] = LoopVet()
  %clear all, clc;
  n = zeros(1,7);
  loop = zeros(1,7);
  vetor = zeros(1,7);
  for i = 1 : 7
    n = 10^i;
    D = rand(n,1);
    H = rand(n,1);
    tic();
    for k = 1:n
      V(n) = 1/12*pi*(D(n)^2)*H(n);
    endfor
    loop(i) = toc()
    tic();
    V = 1/12.*pi.*(D.^2).*H;
    vetor(i) = toc()
  endfor
  
  grid on;
  plot (1:7,loop,"ro-"), hold on;
  plot (1:7,vetor,"bo-"), hold on;
  xlabel("10^n");
  ylabel("Elapsed Time");
  title ("Loop(RED) VS Vetorizacao(BLUE)");
  %clear D H V n loop vetor;
  
endfunction


