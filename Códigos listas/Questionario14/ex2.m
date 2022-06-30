clc
clear
A = [0, 1; -8, -4];
B = [0; 1];
C = [1, 0];
D = 0;
n = rank(ctrb(A, B));
polos_desejados = [-2, -2, -10];
espaco_estados = ss(A, B, C, D)
A_ = [0, 1, 0; -8, -4, 0; -1, 0, 0];
B_ = [0; 1; 0];
C_ = [1, 0, 0];
D_ = 0;
espaco_estados_ = ss(A_, B_, C_, D_)
K = acker(A_, B_, polos_desejados)
Amf = A_ - B_ * K;
ganhocc = dcgain(ss(A_ - B_ * K, [zeros(n, 1); 1], C_, D_))
kr = 1 / ganhocc;
Bmf = [zeros(n, 1); 1];
Cmf = C_;
Dmf = D_;
espaco_estados_mf = ss(Amf, Bmf, Cmf, Dmf)
figure;
step(espaco_estados_mf)