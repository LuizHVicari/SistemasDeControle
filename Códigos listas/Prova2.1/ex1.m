clc
clear
A = [1, 2; -2, -3];
B = [0; 1];
C = [1, 0];
D = 0;
polos_desejados = [-5, -5, -30];
A_ = [1, 2, 0; -2, -3, 0; -1, 0, 0]
B_ = [0; 1; 0]
C_ = [1, 0, 0]
D_ = D
M = ctrb(A, B)
n = rank(M)
% polinomio caracteristico: s³ + 40s² + 325s + 750
K = acker(A_, B_, polos_desejados)