clc;
clear;
% exercício 2, representação por espaço de estados

% definição de valores
L = 10^-3;
C = 100*10^-6;
R = 1;

% função de transferência
num = 1 / (L*C);
den = [1, 1/(R*C), 1/ (L*C)];
Gs = tf(num, den);
polos = pole(Gs);
[A, B, C, D] = tf2ss(num, den)
autovalor = eig(A)