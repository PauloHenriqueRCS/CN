function [result] = P3Q1()
clc, clear all;
format bank;
x = [0.4 1.25 2.5 2.71 3.5];
y = x.*sin(pi.*x);
p = [0.4 1.25 2.5 2.71 3.5];

format long;
plot(x,y,'-m');
hold on, grid on;

PN1 = PNewton([x(1) x(2)],[y(1) y(2)],p);
PN2 = PNewton([x(1) x(2) x(3)],[y(1) y(2) y(3)],p);
PN3 = PNewton([x(1) x(2) x(3) x(4)],[y(1) y(2) y(3) y(4)],p);


ERROAP1 = PN1(3)-x(3);
ERROAP2 = PN2(3)-x(3);
ERROAP3 = PN3(3)-x(3);

printf("Erro absoluto P1 = %d * Erro absoluto P2 = %d * Erro absoluto P3 = %d.", ERROAP1, ERROAP2, ERROAP3);

plot(x,PN1,'-b');
hold on;
plot(x,PN2,'-g');
hold on;
plot(x,PN3,'-r');

title("Polinomios");
xlabel("x");
ylabel("f(x) = xsen(pi*x)");
legend({"f(x) = xsen(pi*x)","P1","P2","P3"});
legend show;

endfunction