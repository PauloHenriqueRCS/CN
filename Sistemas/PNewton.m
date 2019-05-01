function [P] = PNewton(x,y,p)
m = length(x);
n = length(p);

  for t = 1 : n
    
    for i = 1 : m
      Dely(i) = y(i);
    endfor
  
    for k = 1 : m-1
      for i = m : -1 : k+1
        Dely(i) = (Dely(i) - Dely(i-1))/(x(i)-x(i-k));
      endfor
      P(t) = Dely(m);
    endfor
  
    for i = m-1 : -1 : 1
      P(t) = P(t)*(p(t)-x(i))+Dely(i);
    endfor
  
  endfor
endfunction
