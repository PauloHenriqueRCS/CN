function [P] = Questao2()

%a
x = [1:4];
x(1) = 0;
P = (x.-1).*e.^x;

%b
h=get(gca,'Children');
h(1)=plot(x,P,'r'), hold on;
h(2)=plot(x,P,'g');
h(3)=plot(x,P,'b');
h(4)=plot(x,P,'m');
h(5)=plot(x,P,'k');
grid on, xlabel('x');
ylabel('f(x)');
title('Aproximacoes de Taylor');
v=[h(1) h(2) h(3) h(4) h(5)];
legend(v,'f(x)','P_1(x)','P_2(x)','P_3(x)','P_4(x)','location','eastoutside');

endfunction