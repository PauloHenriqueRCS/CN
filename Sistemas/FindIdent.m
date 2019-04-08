function [x] = FindIdent()
  clear all, clc;
  n = zeros(1,4);
  fd = zeros(1,4);
  il = zeros(1,4);
  for i = 1 : 4
    n(i) = 10^i;
    z = randn(n(i));
    tic();
    z(find(z>0));
    fd(i) = toc();
    tic();
    z(z>0);
    il(i) = toc();
  endfor
  
  grid on;
  plot (n,fd,"ro-"), hold on;
  plot (n,il,"bo-"), hold on;
  xlabel("10^n");
  ylabel("Elapsed Time");
  title ("Find(RED) VS Indexacao logica(BLUE)");
  clear z n fd il;
  
endfunction