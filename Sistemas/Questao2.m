function [DD] = Questao2()

%a

P_1 = (1-1)*e^1;
P_2 = (2-1)*e^2;
P_3 = (3-1)*e^3;
P_4 = (4-1)*e^4;

x = [1:20];
F = (x.-1).*e.^x

%b
h = get(gca,'Children');
h(1) = plot(x,F,'r'), hold on;
h(2) = plot(x,P_1,'g');
h(3) = plot(x,P_2,'b');
h(4) = plot(x,P_3,'m');
h(5) = plot(x,P_4,'k');
grid on, xlabel('x');
ylabel('f(x)');
title('Aproximacoes de Taylor');
v = [h(1) h(2) h(3) h(4) h(5)];
legend(v,'f(x)','P_1(x)','P_2(x)','P_3(x)','P_4(x)','location','eastoutside');

endfunction