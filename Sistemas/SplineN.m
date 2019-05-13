function [s2,CondErro]= SplineN(n ,x ,y)

if n<3
 CondErro = 1;
 return; 
end; 

CondErro = 0;
m = n-2; 
Ha = x(2)-x(1);
Deltaa =(y(2)-y(1))/Ha;

for i=1:m
  Hb = x(i+2)-x(i+1); 
  Deltab = (y(i+2)-y(i+1))/Hb;
  e(i) = Hb;
  d(i) = 2*(Ha+Hb );
  s2(i+1) = 6*(Deltab-Deltaa);
  Ha = Hb; 
  Deltaa = Deltab;
endfor

for i=2:m
  t = e(i-1)/d(i-1); 
  d(i) = d(i)-t*e(i-1);
  s2(i+1) = s2(i+1)-t*s2(i);
endfor

s2(m+1)= s2(m+1)/d(m);

for i=m:-1:2 
  s2(i)=(s2(i)-e(i-1)*s2(i+1))/d(i-1); 
endfor

s2(1) = 0;
s2(m+2) = 0;

endfunction
