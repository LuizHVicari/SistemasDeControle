clear
clc
A = [0, 1; -50, -15];
B = [0; 1];
C = [2, 1];
D = 0;
espaco_estados = ss(A, B, C, D);
polos = eig(A)
polos_desejados = [-50, -50];
N = obsv(A, C)
n = rank(N)
% polinomio caractreistico considerando os polos desejados: s² + 100s +
% 2500
phiA = A^2 + 100 * A + 2500 * eye(2)
K = acker(A, B, polos_desejados);
Ke = acker(A', C', [-50, -50])
Aob = (A - Ke'*C);
Bob = [B Ke'];
Cob = eye(n);
Dob = D;
espaco_estados_ob = ss(Aob, Bob, Cob, Dob)