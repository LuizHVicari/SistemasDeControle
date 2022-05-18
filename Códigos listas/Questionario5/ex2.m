clc;
clear all;
sReal = -1;
sImag = sqrt(3);
zero = -0.05;
s1 = sReal + sImag*1i;
ganho = 1 / abs(1 / (s1^2 + 2*s1 + 1));
disp('Ganho ajustável:');
disp(ganho);
Gs = tf(ganho, [1, 2, 1]);
ti = 1 / -zero;
disp('Ti:');
disp(ti);
kp = 1 / abs(ti*(s1-zero)*3/(s1^2 + 2*s1 + 1));
Pi = tf(kp*[1, -zero], [1, 0]);
Gmf = feedback(Gs, 1);
Gcmf = feedback(Gs * Pi, 1);
figure;
rlocus(Gmf);
hold;
rlocus(Gcmf);