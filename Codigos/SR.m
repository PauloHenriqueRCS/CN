%Algoritmo Substituicoes Retroativas
%Objetivo: Resolver o SISTEMA TRIANGULAR SUPERIOR  Ux=d pelas SUBSTITUI��ES RETROATIVAS
%par�metro de entrada (n,U,d), ordem, matriz triangular superior e vetor independente
%n -> pode ser calculado dentro da fun��o
%par�metro de sa�da {solu��o do STS}

function x = SR (U,d)
  n = size(U,1);
  x(n) = d(n) / U(n,n);
  for i = n - 1 : -1 : 1
    Soma = 0;
    for j = i + 1 : 1 : n
      Soma = Soma + U(i,j) * x(j);
    endfor
    x(i) = (d(i) - Soma) / U(i,i);
  endfor
endfunction
