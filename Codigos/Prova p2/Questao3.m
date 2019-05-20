function [Au, L, U, P, x, y, r] = Questao3()

A = [ 0 1 0 0 ; 1/2 0 1 1/2 ; 0 0 0 1/2 ; 1/2 0 0 0];
S = [ 1/4 1/4 1/4 1/4 ; 1/4 1/4 1/4 1/4 ; 1/4 1/4 1/4 1/4 ; 1/4 1/4 1/4 1/4];
b = [ 2 ; 2 ; 1 ; 1];
m = 0.15;
M = (1 - m)* A + m*S;

[Ra, Rb, Au] = EGPP(M, b);

[L, U, P, y, x, r] = DLUPP(M,b);
endfunction