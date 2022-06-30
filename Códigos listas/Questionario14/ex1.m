A = [0, 1, 0; 0, 0, 1; 0, -200, -30];
B = [0; 0; 1];
C = [1, 0, 0];
D = 0;
espaco_estados = ss(A, B, C, D);
polos_desejados = [-5+3*sqrt(3)*1i, -5-3*sqrt(3)*1i, -50, -50]
A_ = [0, 1, 0, 0; 0, 0, 1, 0; 0, -200, -300, 0; -1, 0, 0, 0];
B_ = [0; 0; 1; 0];
C_ = [1, 0, 0, 0];
espaco_estados_intergrador = ss(A_, B_, C_, D)
K = acker(A_, B_, polos_desejados)
ganhocc = dcgain(ss(A_ - B_ * K, [zeros(3, 1); 1], C_, D))
kr = 1 / ganhocc;
Amf = A_ - B_ * K
Bmf = [zeros(3, 1); 1]
Cmf = C_
espaco_espado_mf = ss(Amf, Bmf, Cmf, D)
figure;
step(espaco_espado_mf)
espaco_estados_mf2 = ss(Amf, Bmf, [0.5, 0, 0, 0], D)
figure;
step(espaco_estados_mf2)