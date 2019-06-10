function [result] = P3Q3()
clc, clear all;
%Altura
x = [ 183 173 168 188 158 163 193 163.1 178 ];
%Peso
y = [ 79 69 70 81 61 63 79.1 71 73 ];
format bank;
plot(x,y,'o');
hold on, grid on;
Uxy = MinimosQ(x,y);
Uyx = MinimosQ(y,x);
plot(x,Uxy,'-m');
hold on;
Cxy = PNewton(x,Uxy,175)
Dxy = PNewton(Uxy,x,80)
Cyx = PNewton(Uyx,y,175)
Dyx = PNewton(y,Uyx,80)
title("Diagrama de Dispersao");
xlabel("Altura (cm)");
ylabel("Peso (kg)");
legend({"Pessoa", "U = b1+b2*x"}, "location", "east");
legend show;
%A dispersãpo dos pontos se mostrou forte pela proximidade dos pontos
%O Gráfico de Dispersão demonstrou uma correlação positiva, com uma aglomeração crescente ou seja, quanto mais alto mais pesado
endfunction