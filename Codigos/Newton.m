function [Raiz,Iter,CondErro] = Newton(x0,Toler,IterMax)
%Saida : Raiz e a raiz da funcao;
% Iter e a quantidade de itearacoes feitas;
% CondErro=0 se a raiz foi encontrada e
% CondErro=1 se nao for encontrada
Fx = f(x0);
DFx = df(x0);
x = x0;
Iter = 0; %f = func˜ao e df = derivada de f
DeltaX = 1000;
DF = 1;
while ((abs(DeltaX) > Toler || abs(Fx) > Toler) && (DF != 0) && (Iter <IterMax))
DeltaX = -Fx/DFx;
x = x + DeltaX;
Fx = f(x);
DFx = df(x); 
Iter= Iter + 1;
end
Raiz = x;
if abs(DeltaX) <= Toler && abs(Fx) <= Toler
CondErro = 0;
else
CondErro = 1;
end
end