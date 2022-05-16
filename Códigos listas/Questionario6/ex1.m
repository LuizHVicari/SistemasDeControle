clc;
clear;
% exercício 1, representação por espaço de estados

% definição de valores
L = 10^-3;
C = 100*10^-6;
R = 1;

% representação em espaço de estados
A = [0, 1/ L; -1 / C, -1 / (R*C)];
B = [0; 1 / C];
C = [1 0];
D = 0;
sys = ss(A, B, C, D);

% autovalores (polos do sistema) da matriz A
autovalor = eig(A);

display(A);
display(B);
display(C);
display(D);
display(autovalor);