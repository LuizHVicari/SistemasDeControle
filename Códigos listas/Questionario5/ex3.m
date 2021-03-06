clear;
clc;
Gs = tf(10, [1, 4, 0]);
up = 0.163;
ts = 4;
zeta = -log(up) / sqrt(pi^2+log(up)^2);
disp('Coeficiente de amortecimento:');
disp(zeta);
wn = 4 / (zeta * ts);
disp('Frequência natural:');
disp(wn);
sReal = -wn*zeta;
sImag = wn*sqrt(1-zeta^2);
s1 = sReal + sImag*1i;
disp('Polos dominantes:');
disp(s1);
Gs1 = 10 / (s1 * (s1+4));
ang = rad2deg(angle(Gs1));
phi = -180 - ang;
disp('Contribuição angular:');
disp(phi);
teta = atand(sImag / -sReal);
phi1 = 180 - teta;
phiz = phi + phi1;
disp('Phi z:');
disp(phiz);
disp('Como phi1 = 90, o zero é igual à parte real do polo dominate.');
zero = sReal;
ti = 1 / -zero;
disp('Ti:');
disp(ti);
kp = 1 / abs(ti*(s1-zero)/s1*Gs1);
disp('Kp:');
disp(kp);
Pi = tf(kp*[1, 1/ti], [1, 0]);
Gcomp = Gs * Pi;
Gmf = feedback(Gcomp, 1);
polos = pole(Gmf);
disp('Polos de G(s) compensado em malha fechada:');
disp(polos);
figure;
rlocus(Gmf);
figure;
step(Gmf);
