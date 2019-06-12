function [result] = MultInte(a,b,m,x)
clear all, clc;
a = 1;
b = 7;
m = 10;

x = linspace(a,b,m+1);
n = length(x);
d = 2;
y = 1./x;
h = (b-a)/m;
c = ones(1,m+1) * 2;
c(1) = c(n) = 1;
I = (h/2)*sum(c.*y);



'x = linspace(a,b,m+1);
n = length(x);
d = 2;
y = 1./x;
h = (b-a)/m;
c = ones(1,m+1) * 2;
c(1) = c(n) = 1;
I = (h/2)*sum(c.*y)'


endfunction