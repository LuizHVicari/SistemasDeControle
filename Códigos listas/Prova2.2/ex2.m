clc
clear

% declaracao das matrizes
A = [1, 2; -2, -3];
B = [1; 0];
C = [0, 1];
D = 0;
syms s

% calculo da matriz (sI-A)^-1
Mat = inv(s * eye(rank(A)) - A)

% calculo da funcao de transferência
[num, den] = ss2tf(A, B, C, D)