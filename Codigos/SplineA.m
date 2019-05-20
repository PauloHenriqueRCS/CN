function [sz ,CondErro ,aux] = SplineA(n,x,y,m,z)

[s2,CondErro] = SplineN(n,x,y);

if CondErro~=0
  return;
end
CondErro = 0; 
aux = [];

for j=1:m
      if z(j)>=x(1)&z(j)<=x(n)
        inf = 1; sup = n;
        while((sup-inf)>1)
          ind = round((inf+sup)/2);
          if x(ind)>z(j)
          sup = ind;
          else 
          inf=ind;
        end
      end
      h=x(sup)-x(inf);
      a=(s2(sup)-s2(inf))/(6*h);
      b=s2(inf)*.5;
      c=(y(sup)-y(inf))/h-(s2(sup)+2*s2(inf))*h/6;
      d=y(inf); 
      h=z(j)-x(inf);
      sz(j)=((a*h+b)*h+c)*h+d;
      aux=[aux;inf-1,a,b,c,d,z(j),sz(j)];
    else
      sz(j)=0; CondErro=CondErro +1;

    end
  end
end
