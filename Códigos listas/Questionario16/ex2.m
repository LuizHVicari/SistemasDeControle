clc
clear
A = [0, 1, 0; 0, 0, 1; -12, -19, -8];
B = [0; 0; 1];
C = [2, 1, 0];
D = 0;
polos_desejados = [-2, -2, -20, -20];
autovalores = [-20, -20, -200];
A_ = [0, 1, 0, 0; 0, 0, 1, 0; -12, -19, -8, 0; -2, -1, 0, 0]
B_ = [0; 0; 1; 0];
C_ = [2, 1, 0, 0];
D_ = D;
M = ctrb(A_, B_)
% soma dos valores de M
soma = 1 -8 +1 -8 + 45 + 1 - 8 + 45 -220 -1 + 6
n =  rank(M)
K_ = acker(A_, B_, polos_desejados)
N = obsv(A, C)
soma2 = 2 + 1 + 2 + 1 -12 -19 -6
n2 = rank(N)
Ke = acker(A', C', autovalores)