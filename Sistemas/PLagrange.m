function [P] = PLagrange(x,y,p)
  p
n = length(p)
m = length(x);
for k = 1 : n
r = 0;
  for i = 1 : m
    c = 1;
    d = 1;
      for j = 1 : m
        if i != j
          c = c * (p(k) - x(j));
          d = d * (x(i) - x(j));
        endif
      endfor
    r = r + y(i)*c/d;
  endfor  
P(k) = r;
endfor
endfunction