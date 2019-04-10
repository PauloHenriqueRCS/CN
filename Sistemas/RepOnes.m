function [t1,t2] = RepOnes()
  clear all, clc;
  N = round(logspace(1,10,20));
  for n = 1:length(N)
    a = 50;
    tic();
    for k = 1:5
      a(ones(N(n),1),:);
    endfor
    t1(n) = toc();
    tic();
    for k = 1:5
      repmat(a,N(n),1);
    endfor
    t2(n) = toc();
    s(n) = numel(ans)*8/1024;
  endfor;
  
  grid on;
  plot (s,t1,"ro-"), hold on;
  plot (s,t2,"bo-"), hold on;
  xlabel("10^n");
  ylabel("Elapsed Time");
  title ("Loop(RED) VS Vetorizacao(BLUE)");
  legend('(:,ones())','repmat()');
  %clear N n a s t1 t2;
  
endfunction




