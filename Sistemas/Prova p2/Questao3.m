function [residuo, Au, L, U, P, x, y] = Questao3()

A = [ 0 1 0 0 ; 1/2 0 1 1/2 ; 0 0 0 1/2 ; 1/2 0 0 0];
S = [ 1/4 1/4 1/4 1/4 ; 1/4 1/4 1/4 1/4 ; 1/4 1/4 1/4 1/4 ; 1/4 1/4 1/4 1/4];
b = [ 2 ; 2 ; 1 ; 1];
m = 0.15;
M = (1 - m)* A + m*S;

%Matriz aumentada de M
[Ra, Rb, Au] = EGPP(M, b);
%Au =
%
%    0.03750    0.88750    0.03750    0.03750    2.00000
%    0.00000  -10.90833    0.42500    0.00000  -22.66667
%    0.00000    0.00000   -0.03312    0.42500    0.76623
%    0.00000    0.00000    0.00000  -11.33333  -20.66667

[L, U, P, x, y] = DLUPP(M,b);
[residuo] = SLResiduo(M, b, y);

%L =
%
%   1   0   0   0
%   0   1   0   0
%   0   0   1   0
%   0   0   0   1
%
%U =
%
%   0.46250   0.00000   0.00000   0.00000
%   0.00000   0.88446   0.00000   0.00000
%   0.00000   0.00000   0.85000   0.00000
%   0.00000   0.00000   0.00000   0.44156

%P =
%
%   1   0   0   0
%   0   0   0   1
%   0   1   0   0
%   0   0   1   0

%x =
%
%   4.3243
%   1.1306
%   2.3529
%   2.2647

%y =

%   2   1   2   1

%>>[residuo] = SLResiduo(M, b, y)
%residuo =
%
%   0.925000
%  -1.200000
%   0.350000
%  -0.075000

endfunction