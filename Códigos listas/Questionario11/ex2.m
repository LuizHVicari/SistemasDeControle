clc
clear
A = [0, 1, 0; 0, 0, 1; -8, -8, -4];
B = [0; 0; 1];
C = [4, 0, 0];
D = 0;
polos_desejados = [-2, -2, -20]
state = ss(A, B, C, D)
polos = eig(state)
Mcontr = ctrb(A, B)
n = rank(Mcontr)
% eq característica: s^3 + 24s^2 + 84s + 80
phi = A^3 + 24*A^2 + 84*A + 80 * eye(3)
Amf = A - B * acker(A, B, polos_desejados);
Bmf = zeros(n, 1);
Cmf = C;
Dmf = 0;
state_mf = ss(Amf, Bmf, Cmf, Dmf)