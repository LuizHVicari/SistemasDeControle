%Resolução Lista 2 - Sistemas de Controle 2
clc;
%==========================================================================
%Questão 1
clear;
disp('====Questão 1====');
G = tf(1, [1, 6, 8]);
err = 0.05;
kp = 1 / 8;
kp_ = 1 / err - 1;
disp('Constante de erro estático de posição:');
disp(kp_);
b = kp_ / kp;
disp('B:');
disp(b);
%==========================================================================
%Questão 2
clear;
disp('====Questão 2====');
G = tf(1, [1, 10, 0]);
err = 0.1;
kv = 1 / 10;
kv_ = 1 / err;
disp('Constante de erro estático de velocidade:');
disp(kv_);
b = kv_ / kv;
disp('B');
disp(b);
%==========================================================================
%Questão 3
clear;
disp('====Questão 3====');
s = -0.99 + 0.99*1i;
kc_ = 1 / abs((s + 0.01) * 2/((s + 0.001)*s*(s+2)));
disp('Kc:');
disp(kc_);
%==========================================================================
%Questão 3
clear;
disp('====Questão 4====');
G = tf(20, [1, 5, 4]);
err = 0.05;
zero = -0.1;
Gmf = feedback(G, 1);
polos = pole(Gmf);
disp('Polo 1 de Gmf:');
disp(polos(1));
sReal = real(polos(1));
sImag = imag(polos(1));
wn = sqrt(sReal^2 + sImag^2);
zeta = -sReal / wn;
disp('Coeficiente de amortecimento:');
disp(zeta);
disp('Frequência natural:');
disp(wn);
kp_ = 1 / err - 1;
disp('Constante de erro estático de posição:');
disp(kp_);
kp = 20 / 4;
b = kp_ / kp;
disp('B');
disp(b);
t = -1 / zero;
poloAtraso = -1 / (b*t);
disp('Polo do compensador de atraso:');
disp(poloAtraso);
disp('Os polos dominantes de mantém os mesmos');
s = sReal + sImag*1i;
kc_ = 1 / abs((s + zero) * 20/((s + poloAtraso)*(s+1)*(s+4)));
disp('Kc:');
disp(kc_);