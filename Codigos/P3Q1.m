function [result] = P3Q1()
clc, clear all;
x = [.4 1.25 2.71 3.5];
y = x.*sin(pi.*x);
n = length(x);
m = length(y);
p = 2.5;

P1 = InterL([x(1) x(2)],[y(1) y(2)],2.5)
P1 = PLagrange([x(1) x(2)],[y(1) y(2)],2.5)
P1 = PNewton([x(1) x(2)],[y(1) y(2)],2.5)

P2 = InterQ([x(1) x(2) x(3)],[y(1) y(2) y(3)],2.5)
P2 = PLagrange([x(1) x(2) x(3)],[y(1) y(2) y(3)],2.5)
P2 = PNewton([x(1) x(2) x(3)],[y(1) y(2) y(3)],2.5)

P3 = PLagrange(x,y,2.5)
P3 = PNewton(x,y,2.5)
% garrei no spline
P3 = SplineA(n,x,y,1,2.5)


endfunction