function [result] = P3Q2()

clc, clear all;
% LETRA A

dia = [0 6 10 13 17 20 28];
amostra1 = [6.67 17.33 42.67 37.33 30.10 29.31 28.74];
amostra2 = [6.67 16.11 18.89 15.00 10.56 9.44 8.89];

z = 0:1:28;
n = length(z);
format bank;

for i=1 : n
  a(i) = PLagrange(dia,amostra1,z(i));
  b(i) = PLagrange(dia,amostra2,z(i));
endfor

plot(z,a,'r');
hold on; 
grid on;
plot(z,b,'g');
hold off;

xlabel ("DIA DA REALIZAÇÃO DA AMOSTRA");
ylabel ("PESO MÉDIA DA AMOSTRA EM MILIGRAMAS");
title ("APROXIMAÇÃO DOS PESOS MÉDIOS POR LAGRANGE");
legend ("Folhas Novas","Folhas Maduras");
legend show;

% LETRA B

printf("AMOSTRA 1\n");
A1MAX = max(a);
A1MIN = min(a);
A1MED = median(a);
printf("Peso Máximo = %d * Peso Minimo = %d * Peso Medio = %d \n\n",A1MAX, A1MIN, A1MED);

printf("AMOSTRA 2\n");
A2MAX = max(b);
A2MIN = min(b);
A2MED = median(b);
printf("Peso Máximo = %d * Peso Minimo = %d * Peso Medio = %d \n\n",A1MAX, A1MIN, A1MED);

endfunction