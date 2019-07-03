  function randmatstat(t)
  n = 5;
  v = zeros(t); %Gera uma matriz txt de zeros
  w = zeros(t) ;
  
  for i = 1 : t
  a = randn(n,n); %Matriz nxn de no aleatorios com distribuic˜ao normal
  b = randn(n,n);
  c = randn(n,n);
  d = randn(n,n);
  P = [ a b c d ] ;
  Q = [ a b ; c d ] ;
  v (i) = trace ((P'*P)^4); %trace = Traco de matriz e P’= transpostade A
  w(i) = trace((Q'*Q)^4);
end
  std (v)/mean(v) %desvio e media s˜ao calculados por coluna da matriz.
  std (w)/mean(w)
end
