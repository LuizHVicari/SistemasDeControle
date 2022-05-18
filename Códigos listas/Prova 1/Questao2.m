%===Questão 2===
clc;
Gs = tf(10, [1, 0, 2]);
up = 0.05;
ts = 1;
zeta = -log(up) / sqrt(pi^2+log(up)^2)
wn = 4 / (zeta*ts)
sReal = - zeta*wn
sImag = wn*sqrt(1-zeta^2)
s1 = sReal + sImag*1i
s2 = sReal - sImag*1i
Gs1 = 10 / (s1^2 + 2);
ang = rad2deg(angle(Gs1))
phi = 180 - ang
x = sImag / tand(phi);
zero = sReal - x
k = 1 / abs((s1+3.95)*Gs1)
td = 1 /-zero;
k/td