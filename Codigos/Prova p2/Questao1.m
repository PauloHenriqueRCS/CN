function [x] = Questao1 ()
n = 1:15;
Fat = factorial(n);
S = sqrt(2.*pi.*n).*(n/e).^n;
ERROA = Fat.-S;
ERROR = ERROA./Fat;
x = [n' Fat' S' ERROA' ERROR'];
endfunction
