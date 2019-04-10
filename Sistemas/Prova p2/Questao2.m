function [v] = Questao2()

function
x0 =  1;
   p1 = ((x0-1)*(e**x0)) + (((e**x0)*(x0))*(x-x0));
   p = 0;
Endfunction

function [p2,p] = P2(x)
  x0 = 1;
  p2 = ((x0-1)*(e**x0)) + (((e**x0)*(x0))*(x-x0)) + (((((e**x0)*(x0))+(e**x0))/factorial(2))*((x-x0)**2));
endfunction

function [p3] = P3(x)
  x0 = 1;
  p3= ((x0-1)*(e**x0)) + (((e**x0)*(x0))*(x-x0)) + (((((e**x0)*(x0))+(e**x0))/factorial(2))*((x-x0)**2)) + (((((e**x0)*(x0))+(2*(e**x0))) / factorial(3)) * ((x-x0)**3))
endfunction

function [p4] = P4(x)
  x0 = 1;
  p4 = ((x0-1)*(e**x0)) + (((e**x0)*(x0))*(x-x0)) + (((((e**x0)*(x0))+(e**x0))/factorial(2))*((x-x0)**2)) + (((((e**x0)*(x0))+(2*(e**x0))) / factorial(3)) * ((x-x0)**3))+(((((e**x0)*(x0))+(3*(e**x0))) / factorial(4)) * ((x-x0)**4));
endfunction


x = [1:20];
F = (x.-1).*e.^x;

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