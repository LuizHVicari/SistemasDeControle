clc
clear
A = [0, 1, 0; 0, 0, 1; 0, -2, -3];
B = [0; 0; 1];
C = [2, 0, 0];
D = 0;
state = ss(A, B, C, D);
up = 0.163;
ts = 2;
zeta = -log(up) / sqrt(pi^2 + log(up)^2)
wn = 4 / (ts * zeta)
sReal = -wn * zeta;
sImag = wn * sqrt(1- zeta^2);
s1 = sReal + sImag*1i
s2 = sReal - sImag*1i
% mexer no ultimo polo da lista para cada parte
polos_desejados = [s1, s2, -50];
M = ctrb(A, B)
n = rank(M)
K = acker(A, B, polos_desejados)
statemf_aux = ss(A- B * K, B, C, D);
ganhocc = dcgain(statemf_aux)
kr = 1 / ganhocc
Amf = A - B * K;
Bmf = B * kr;
Cmf = C;
Dmf = D;
state_mf = ss(Amf, Bmf, Cmf, Dmf);
step(state_mf)