clc
clear
A = [0, 1, 0; 0, 0 , 1; -12, -19, -8];
B = [0; 0; 1];
C = [2, 1, 0];
D = 0;
polos_desejados = [-2, -2, -20];
autovalores = [-20, -20, -200];
M = ctrb(A, B);
soma = 1 + 1 - 8 + 1 - 8 + 45
n = rank(M)
K = acker(A, B, polos_desejados)
N = obsv(A, C)
soma2 = 2 + 1 + 2 + 1 -12 -19 -6
n2 = rank(N)
Ke = acker(A', C', autovalores)