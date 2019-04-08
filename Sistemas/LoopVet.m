function [x] = LoopVet()
  clear all, clc;
  n = zeros(1,7);
  loop = zeros(1,7);
  vetor = zeros(1,7);
  for i = 1 : 7
    n(i) = 10^i;
    D = rand(n(i),1);
    H = rand(n(i),1);
    tic();
    for k = 1:n(i)
      V(n(i)) = 1/12*pi*(D(n(i))^2)*H(n(i));
    endfor
    loop(i) = toc();
    tic();
    V = 1/12.*pi.*(D.^2).*H;
    vetor(i) = toc();
  endfor
  
  grid on;
  plot (n,loop,"ro-"), hold on;
  plot (n,vetor,"bo-"), hold on;
  xlabel("10^n");
  ylabel("Elapsed Time");
  title ("Loop(RED) VS Vetorizacao(BLUE)");
  clear D H V n loop vetor;
  
endfunction


