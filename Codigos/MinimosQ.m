function [U, V, b0, b1] = MinimosQ(x,y)

n = length(x);
b1 = (sum(x)*sum(y)-n*sum(x.*y))/((sum(x)).^2-n*sum(x.^2));
b0 = (sum(y)-b1*sum(x))/n;
U = b0+b1*x;
V = U/n-2;
endfunction