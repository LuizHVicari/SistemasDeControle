clc;
clear
A = [0, 1; 1, 0];
B = [0; 1];
C = [1, 0];
D = 0;
up = 0;
wn = 4;
zeta = 1; % calculando o limite em up -> 0
state = ss(A, B, C, D)
polos = eig(A)
sReal = -wn*zeta;
sImag = wn*sqrt(1-zeta^2)*1i;
s1 = sReal + sImag
s2 = sReal - sImag
polos_desejados = [s1, s2];
M = ctrb(A, B)
n = rank(M)
K = acker(A, B, polos_desejados)
ganhocc = dcgain(ss(A - B * K, B, C, D))
kr = 1 / ganhocc
Amf = A-B*K;
Bmf = B * kr;
Cmf = C;
Dmf = D;
state_mf = ss(Amf, Bmf, Cmf, Dmf)
step(state_mf)