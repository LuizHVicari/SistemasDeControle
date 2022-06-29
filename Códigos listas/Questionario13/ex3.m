clc
clear
A = [0, 1; -8, -4];
B = [0; 1];
C = [1, 0];
D = 0;
polos_desejados = [-2, -2];
M = ctrb(A, B);
n = rank(M);
K = acker(A, B, polos_desejados)
ganhocc = dcgain(ss(A - B * K, B, C, D))
kr = 1 / ganhocc
Amf = A - B * K
Bmf = B * kr
Cmf = C
Dmf = D
ganhocc = dcgain(Amf, Bmf, Cmf, Dmf)
sys_mf = ss(Amf, Bmf, Cmf, Dmf);
figure;
step(sys_mf)
b = [0; 1.5];
Amf2 = A - b * K;
Bmf2 = b * kr;
Cmf2 = C;
Dmf2 = D;
sys_mf2 = ss(Amf2, Bmf2, Cmf2, Dmf2);
figure;
step(sys_mf2)