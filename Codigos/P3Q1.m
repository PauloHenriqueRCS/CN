function [result] = P3Q1()
clc, clear all;
x = [.4 1.25 2.71 3.5];
y = x.*sin(pi.*x);
%y = 2.5;



R = PLagrange(x,y,x)

endfunction