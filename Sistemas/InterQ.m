function [r] = PQ(x,y)
n = length(x);
A = ones(n));

A(:,2) = x;
A(:,3) = x^2;

endfunction
x = [ 0.1 0.6 0.8]
y = [ 1.221 3.320 4.953]
n = length(x);
m = length(t);
t = [ 0 : 0.01 : 1];
plot(x,y,'o')
hold on
grid on
plot(t,e.^(2*t),'k')
hold on
for i = 1 : m
tt(i) = PLagrange(n,x,y,t(i));
endfor
plot(t,tt,'b')