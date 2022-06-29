clc
clear
A = [0, 1, 0; 0, 0, 1; 0, -200, -30];
B = [0; 0; 1];
C = [1, 0, 0];
D = 0;
polos_desejados = [-5+3*sqrt(3)*1i, -5-3*sqrt(3)*1i, -50];
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
sys_mf2 = ss(Amf,Bmf, [0.5, 0, 0], Dmf)
figure;
step(sys_mf2)