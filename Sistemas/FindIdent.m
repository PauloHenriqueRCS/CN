function [n,fd,il] = FindIdent()
  clear all, clc;
  n = zeros(1,4);
  fd = zeros(1,4);
  il = zeros(1,4);
  for i = 1 : 4
    n = 10^i;
    z = randn(n);
    tic();
    z(find(z>0));
    fd(i) = toc();
    tic();
    z(z>0);
    il(i) = toc();
  endfor
  
  grid on;
  plot (1:4,fd,"ro-"), hold on;
  plot (1:4,il,"bo-"), hold on;
  xlabel("10^n");
  ylabel("Elapsed Time");
  title ("Find(RED) VS Indexacao logica(BLUE)");
  %clear z n fd il;
  
endfunction