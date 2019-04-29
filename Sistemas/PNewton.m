%{
for i = 1 : n - 1
y1(i) = (y(i+1)-y(i))/(x(i+1)-x(i));
endfor

for i = 1 : n - 2
y2(i) = ((y1(i+1)-y1(i))/(x(i+2)-x(i)))();
endfor

for i = 1 : n - 3
y3(i) = ((y2(i+1)-y2(i))/(x(i+3)-x(i)));
endfor
%}


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
P(t) = P*(p(t)-x(i))+Dely(i);
endfor

endfor
endfunction
