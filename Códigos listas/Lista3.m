%Resolução Lista 3 - Sistemas de Controle 2
clc;
%==========================================================================
%Questão 2
G = tf(1, [1, 3, 2, 0]);
Gmf = feedback(G, 1);
pole(G);
up = 0.1;
ts = 5;
err = 0.05;
zeroAvan = -1;
zeroAtras = -0.04;
zeta = -log(up) / sqrt(pi^2 + log(up)^2);
wn = 4 / (ts*zeta);
disp('Coeficiente de amortecimento:');
disp(zeta);
disp('Frequencia natural:');
disp(wn);
sReal = -zeta * wn;
sImag = wn*sqrt(1-zeta^2);
s1 = sReal + sImag * 1i;
s2 = sReal - sImag * 1i;
disp('Polo 1:');
disp(s1);
Gs1 = 1 / (s1^3+3*s1^2+2*s1);
fase = rad2deg(angle(Gs1));
angContrib = 180 - fase;
disp('Contribuição angular:');
disp(angContrib);
teta1 = rad2deg(atan((sReal-zeroAvan)/sImag))
teta2 = angContrib + teta1;
poloAvan = -tan(deg2rad(teta2)) * sImag + sReal;
disp('Polo avanço:');
disp(poloAvan);
kc_ = 1 / abs((s1 - zeroAvan)/((s1 - poloAvan)*s1*(s1+1)*(s1+2)));
disp('Kc:');
disp(kc_);
kv_ = 1 / err;
disp('Constante de erro estático de velocidade:');
disp(kv_);
kv = 1 / 2;
b = kv_ / kv;
t = -1 / zeroAvan;
alfa = -1 / (t*poloAvan);
beta = kv_ / (kc_*alfa*kv)
t2 = -1 / zeroAtras;
poloAtras = 1 / (beta*t2);
disp('Polo do compensador de atraso:');
disp(poloAtras);
disp('Os polos dominantes de mantém os mesmos');