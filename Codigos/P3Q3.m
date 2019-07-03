function [result] = P3Q3()
  
clc, clear all;
%Altura
x = [ 183 173 168 188 158 163 193 163.01 178 ];
%Peso
y = [ 79 69 70 81 61 63 79.01 71 73 ];

format bank;

plot(x,y,'o');
hold on, grid on;
Uxy = MinimosQ(x,y);
Uyx = MinimosQ(y,x);
plot(x,Uxy,'-m');

printf("PESO = F(ALTURA)\n");
Cxy = PNewton(x,Uxy,175);
printf("O peso de um funcionario com 175 cm de altura é de %d kg\n",Cxy);
Dxy = PNewton(Uxy,x,80);
printf("A altura um funcionario com 80 kg de peso é de %d cm\n\n",Dxy);
printf("ALTURA = G(PESO)\n");
Cyx = PNewton(Uyx,y,175);
printf("O peso de um funcionario com 175 cm de altura é de %d kg\n",Cyx);
Dyx = PNewton(y,Uyx,80);
printf("A altura de um funcionario com 80 kg de peso é de %d cm\n",Dyx);

title("Diagrama de Dispersao");
xlabel("Altura (cm)");
ylabel("Peso (kg)");
legend({"Pessoa", "U = b1+b2*x"}, "location", "east");
legend show;
endfunction