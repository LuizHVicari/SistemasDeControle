%Resolução Lista 4 - Sistemas de Controle 2
clc;
%==========================================================================
%Questão 2
clear all;
disp('====Questão 2====');
Gs = tf(1, [1, 0, -2]);
zeta = 0.707;
wn = 2;
sReal = -wn*zeta;
sImag = wn*sqrt(1-zeta^2);
s1 = sReal + sImag*1i;
s2 = sReal - sImag*1i;
disp('Polos dominantes:');
disp(s1);
Gs1 = 1 / (s1^2 - 2);
ang = rad2deg(angle(Gs1));
phi = 180 - ang;
disp('Contribuição angular:');
disp(phi);
zero = sReal - sImag / tand(phi);
disp('Zero calculado:');
disp(zero);
td = 1 / -zero;
disp('Td:');
disp(td);
kp = 1 / abs(td*(s1-zero)*Gs1);
disp('Kp:');
disp(kp);
Cs = tf(kp*[td, 1], 1)
%==========================================================================
%Questão 2
clear all;
disp('====Questão 3====');
Gs = tf(1, [1, 0, 2, 0]);
sReal = -1;
sImag = sqrt(3);
s1 = sReal + sImag*1i;
s2 = sReal - sImag*1i;
Gs1 = 1 / (s1*(s1^2+2));
ang = rad2deg(angle(Gs1));
phi = 180 - ang;
disp('Contribuição angular:');
disp(phi);
phiInd = phi / 2;
disp('Contribuição angular individual:');
disp(phiInd);
teta1 = 180 - phiInd;
y = sImag / tand(teta1);
zero = sReal + y;
disp('Zero dos compensadores:');
disp(zero);
td = 1 / -zero;
disp('Td:');
disp(td);
% o cálculo de kp não dá certo aqui por algum motivo
kp = 1 / 2 / abs(td*(s1-zero)*Gs1);
disp('Kp:');
disp(kp);