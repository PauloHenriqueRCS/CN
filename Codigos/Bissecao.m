function = [Raiz, Iter, CondErro] = Bissecao (a,b,Toler,InterMax)

Fa = f(a);
Fb = f(b);

if Fa * Fb > 0
return;
endif

DeltaX = abs(b-a)/2;
Iter = 0;
%repita
x = (a+b)/2;
Fx = f(x);
%escreva
if ((DeltaX <= Toler && abs(Fx) <= Toler) || (Iter >= IterMax))
return;
endif

if (Fa * Fx > 0)
a = x;
Fa = Fx;
else
b = b
endif

DeltaX = DeltaX/2;
Iter = Iter+1;
%fimrepita

Raiz = x;
if (DeltaX <= Toler && abs(Fx) <= Toler)
  CondErro = 0;
else
  CondErro = 1;
endif

endfunction