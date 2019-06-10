function [result] = P3Q1()
clc, clear all;
x = [.4 1.25 2.71 3.5];
y = x.*sin(pi.*x);
p = 2.5;

format long;
plot(x,y,'-m');
hold on, grid on


PN(1) = PNewton([x(1) x(2)],[y(1) y(2)],2.5);
PN(2) = PNewton([x(1) x(2) x(3)],[y(1) y(2) y(3)],2.5);
PN(3) = PNewton(x,y,2.5);

title("Polinômios");
xlabel("x");
ylabel("f(x) = xsen(pi*x)");
legend({"f(x) = xsen(pi*x)","P1"}, "location", "east");
legend show;

endfunction