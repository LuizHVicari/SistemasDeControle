%===Questão 1===
clc;
G1s = tf(30, [1, 16, 65, 50]);
G2s = tf([2, 0], 1);
e = 0.05;
zero = -0.1;
kp_ = 1 / e - 1 
Gs = feedback(G1s, G2s)
kp = 30/50;
b = kp_/kp
t = 1/-zero;
polo = -1 /(t*b)
s1 = -0.7;
Gs1 = 30 / (s1^3+16*s1^2+125*s1+50);
kc_ = 1 / abs(Gs1*(s1-zero)/(s1-polo))