function [result] = P3Q3()

%Altura
x = [ 183 173 168 188 158 163 193 163 178 ];
%Peso
y = [ 79 69 70 81 61 63 79 71 73 ];

plot(x,y,'o');
%plot(y,x,'o');
hold on, grid on;
U = MinimosQ(x,y)
plot(x,U,'-m');
%U = MinimosQ(y,x);
%plot(y,U,'-m');
hold on;

title("Diagrama de Dispers�o");
xlabel("Altura (cm)");
ylabel("Peso (kg)");
legend({"Pessoa", "U = b1+b2*x"}, "location", "east");
legend show;
%A dispersãpo dos pontos se mostrou forte pela proximidade dos pontos
%O Gráfico de Dispersão demonstrou uma correlação positiva, com uma aglomeração crescente ou seja, quanto mais alto mais pesado
endfunction