function [result] = P3Q3C()
clear all, clc;
%Altura
x = [ 183 173 168 188 158 163 193 163 178 ];
%Peso
y = [ 79 69 70 81 61 63 79 71 73 ];


R = PLagrange(x,y,175)


endfunction