clc
clear
A = [0, 1; 4, 0];
B = [0; 1];
C = [2, 0];
D = 0;
state = ss(A, B, C, D)
polos_desejados = [-2, -2]
% matriz de controlabilidade
Mcontr = ctrb(A, B)
% posto da matriz de controlabilidade
rank(Mcontr)
syms s
eq = (s + 2) ^ 2 % = s^2 + 4s + 4
phi = A ^ 2 + A * 4 + 4 * eye(2)
K = acker(A, B, polos_desejados)
Amf = A - B * K;
Bmf = zeros(2, 1);
Cmf = C;
Dmf = D;
states_mf = ss(Amf, Bmf, Cmf, Dmf)