clc;
clear;
num = 1;
den = [1, 21, 20, 0];
G = tf(num, den);
syms s K;
[Num, Den] = tfdata(G);
Gplanta = poly2sym(Num,s)/poly2sym(Den,s);
Gmf = (K*Gplanta)/(1 + K*Gplanta);
disp('Gmf:');
disp(Gmf);
kcr = 420;
G = tf(kcr*num, den);
figure;
Gmf = feedback(G, 1);
step(Gmf);
Gk = tf(1, [1, 21, 20, kcr]);
polos = pole(Gk)
wn = imag(polos(2));
pcr = 2*pi/wn
kp = 0.6*kcr
ti = 0.5*pcr
td = 0.125*pcr
Pid = tf([td*kp, kp, kp/ti], [1, 0])
Gc = G*Pid;
Gmfc = minreal(feedback(Gc, 1))
figure;
step(Gmfc);