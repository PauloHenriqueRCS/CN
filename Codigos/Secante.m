function [Raiz, Iter, CondErro] = Secante(a,b,Toler,IterMax)

Fa = f(a);
Fb = f(b);

if abs(Fa) < abs(Fb)
t = a;
a = b;
b = t;
t = Fa;
Fa = Fb;
Fb = t;
endif

Iter = 0;
x = b;
Fx = Fb;

%repita
DeltaX = -Fx/((Fb-Fa)*(b-a));
x = x+DeltaX;
Fx = f(x);

if (abs(DeltaX) <= Toler && abs(Fx) <= Toler) || Iter >= IterMax
return;
endif
a = b;
Fa = Fb;
b = x;
Fb = Fx;
Iter = Iter+1;
%fimrepita

Raiz = x;

if abs(DeltaX) <= Toler && abs(Fx) <= Toler
  CondErro = 0;
else
  CondErro = 1
endif

endfunction