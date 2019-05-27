function [R] = P3Q1()

x = [.4 1.25 2.71 3.5]
t = 2.5;
y = x.*sin(pi.*x)

R = PLagrange(x,y,t)

endfunction