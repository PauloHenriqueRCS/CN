function [A, b, Au] = EGPP(A, b)
  [m,n] = size(A);
  Au = [A b]
  for k=1:n-1
    %parte do pivoteamento
    [p] = max(abs(Au(k:n,k)));
    p = p+k-1;
    if p == k
      % pivoteamento das linhas
      Au([k,p],:) = Au([p,k],:);
    end
    for i=k+1:n
      m = Au(i,k)/Au(k,k);
      Au(i,k:end) = Au(i,k:end)-m*Au(k,k:end);
    end
  end
  %x = backsub(Ab(:,1:n),Ab(:,end));
  
  b = Au(:, end);
  A = Au;
  A(:, end) = [];
  endfunction