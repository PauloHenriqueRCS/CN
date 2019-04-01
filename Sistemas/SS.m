%Algoritmo Substituicoes Sucessivas
%Objetivo:Resolver o SISTEMA TRIANGULAR INFERIOR -> Lx = c, pelas substitui��es sucessivas
%par�metro de entradan n(,L,c) -> ordem, matriz triangular inferior e vetor independente
%n -> pode ser calculado dentro da fun��o
%par�metro de sa�da -> x{solu��o do STI}

function x = SS (L,c)
  n = size(L,1);
  x(1) = c(1) / L(1,1);
  for i = 2 : 1 : n
    Soma = 0;
    for j =  1 : 1 : i - 1
      Soma = Soma + L(i,j) * x(j);
    endfor
    x(i) = (c(i) - Soma / L(i,i));
  endfor
endfunction