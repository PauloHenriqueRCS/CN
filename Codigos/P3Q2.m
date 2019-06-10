function [result] = P3Q2()
% QUESTÃO 2
% LETRA A

dia = [0 6 10 13 17 20 28];
amostra1 = [6.67 17.33 42.67 37.33 30.10 29.31 28.74];
amostra2 = [6.67 16.11 18.89 15.00 10.56 9.44 8.89];

z = 0:0.01:28;
tam = size(z,2);

for i=1:tam
  a(i) = PLagrange(dia,amostra1,z(i));
endfor

hold on;
plot(z,a,'r')
xlabel ("DIA DA REALIZAÇÃO DA AMOSTRA");
ylabel ("PESO MÉDIA DA AMOSTRA EM MILIGRAMAS");
title ("APROXIMAÇÃO DOS PESOS MÉDIOS POR LAGRANGE");
grid on;

for i=1:tam
  b(i) = PLagrange(dia,amostra2,z(i));
endfor
plot(z,b,'g');
legend ("Folhas Novas","Folhas Maduras");
hold off;

% LETRA B
'AMOSTRA 1'
'Peso Máximo'
max(a)
'Peso Mínimo'
min(a)
'Peso Médio'
median(a)
'AMOSTRA 2'
'Peso Máximo'
max(b)
'Peso Mínimo'
min(b)
'Peso Médio'
median(b)

endfunction