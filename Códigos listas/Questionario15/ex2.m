clear
clc
A = [0, 0, -150; 1, 0, -95; 0, 1, -18];
B = [150; 1; 0];
C = [0, 0, 1];
D = 0;
espaco_estados = ss(A, B, C, D);
polos = eig(A)
polos_desejados = [-50, -50, -50];
N = obsv(A, C)
n = rank(N)
% polinomio caractreistico considerando os polos desejados: s³ + 150s² +
% 7500s + 50³
phiA = A ^ 3 + 150 * A ^ 2 + 7500 * A + 125000 * eye(n)
K = acker(A, B, polos_desejados);
Ke = acker(A', C', [-50, -50, -50])
Aob = (A - Ke'*C);
Bob = [B Ke'];
Cob = eye(n);
Dob = D;
espaco_estados_ob = ss(Aob, Bob, Cob, Dob)