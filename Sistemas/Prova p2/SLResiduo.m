function [r] = SLResiduo(A, b, y)
  r = b - (A * y');
endfunction
