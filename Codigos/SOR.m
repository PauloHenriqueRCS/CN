  function [Iter,x,NormaRel] = SOR(A,b,w,Toler,IterMax)
  n = length(A);
  for i = 1 : n
    r = 1/A(i,i);
  for j =1 : n
  if (i ~=j)
    A(i,j) = A(i,j) * r;
    end
  end
  b(i) = b(i) * r;
  x(i) = b(i);
  end
  Iter = 0;
  NormaRel = 1000;
  while (NormaRel > Toler && Iter < IterMax)
  Iter = Iter + 1;
  for i =1:n
  soma=0;
  for j =1:n
  if (i ~=j)
    soma = soma + A(i,j) * x(j);
  end
  end
  v(i) = x(i);
  x(i) = w * (b(i) - soma) + (1 - w) * x(i);
  end
  NormaNum = 0;
  NormaDen = 0;
  for i =1:n
  t = abs(x(i) - v(i));
  if (t > NormaNum)
    NormaNum = t;
  end
  if abs(x(i)) > NormaDen
     NormaDen = abs(x(i));
  end
  end
  NormaRel = NormaNum / NormaDen;
  end
  if NormaRel <= Toler
  CondErro =0;
  else
  CondErro=1;
  end
  end
