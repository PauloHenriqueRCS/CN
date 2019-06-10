function [result] = P3Q1()
clc, clear all;
x = [0.4 1.25 2.71 3.5];
y = x.*sin(pi.*x);
p = [0.4 1.25 2.5 2.71 3.5];

format long;
plot(x,y,'-m');
hold on, grid on;

PN1 = PNewton([x(1) x(2)],[y(1) y(2)],p);
PN2 = PNewton([x(1) x(2) x(3)],[y(1) y(2) y(3)],p);
PN3 = PNewton(x,y,p);

x = [0.4 1.25 2.5 2.71 3.5];

plot(x,PN1,'-b');
hold on;
plot(x,PN2,'-g');
hold on;
plot(x,PN3,'-r');

title("Polinomios");
xlabel("x");
ylabel("f(x) = xsen(pi*x)");
legend({"f(x) = xsen(pi*x)","P1","P2","P3"}, "location");
legend show;

endfunction