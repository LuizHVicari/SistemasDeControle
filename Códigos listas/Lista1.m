%Resolução Lista 1 - Sistemas de Controle 2
clc;
%==========================================================================
%Questão 2
disp('====Questão 2====');
clear;
G = tf(1, [1, 1, 0]);
sReal = -1;
sImag = 1i;
s1 = sReal + sImag;
s2 = sReal - sImag;
Gfase = 1 / (s1*(s1+1));
fase = rad2deg(angle(Gfase));
faseNegativa = fase - 360;
disp('Fase negativa de G(s1):');
disp(faseNegativa);
disp('Fase de G(s1):');
disp(fase);
angContrib = 180 - fase;
disp('Contribuição angular:');
disp(angContrib);
%==========================================================================
%Questão 3
disp('====Questão 3====');
clear;
G = tf(2, [1, 3, 2, 0]);
sReal = -1;
sImag = 1i;
s1 = sReal + sImag;
s2 = sReal - sImag;
Gfase = 1 / (s1*(s1+1)*(s1+2));
fase = rad2deg(angle(Gfase));
faseNegativa = fase - 360;
disp('Fase negativa de G(s1):');
disp(faseNegativa);
disp('Fase de G(s1):');
disp(fase);
angContrib = 180 - fase;
disp('Contribuição angular:');
disp(angContrib);
%==========================================================================
%Questão 4
disp('====Questão 4====');
clear;
up = 0.1;
ts = 2;
zeta = -log(up) / sqrt(pi^2 + log(up)^2);
wn = 4 / (ts*zeta);
disp('Coeficiente de amortecimento:');
disp(zeta);
disp('Frequencia natural:');
disp(wn);
s1 = -zeta*wn + wn*1i*sqrt(1-zeta^2);
disp('Polo 1:');
disp(s1);
%==========================================================================
%Questão 5
disp('====Questão 5====');
clear;
up = 0.15;
ts = 0.5;
zeta = -log(up) / sqrt(pi^2 + log(up)^2);
wn = 4 / (ts*zeta);
disp('Coeficiente de amortecimento:');
disp(zeta);
disp('Frequencia natural:');
disp(wn);
s1 = -zeta*wn + wn*1i*sqrt(1-zeta^2);
disp('Polo 1:');
disp(s1);
%==========================================================================
%Questão 6
disp('====Questão 6====');
clear;
G = tf(16, [1, 4, 0]);
up = 0.05;
ts = 0.5;
zeroAvan = -4
zeta = -log(up) / sqrt(pi^2 + log(up)^2);
wn = 4 / (ts*zeta);
disp('Coeficiente de amortecimento:');
disp(zeta);
disp('Frequencia natural:');
disp(wn);
sReal = -zeta*wn;
sImag = wn*sqrt(1-zeta^2);
s1 = sReal + sImag*1i;
disp('Polo 1:');
disp(s1);
Gfase = 16 / (1*s1^2 + 4*s1);
fase = rad2deg(angle(Gfase));
angContrib = 180 - fase;
disp('Contribuição angular:');
disp(angContrib);
teta1 = rad2deg(atan(zeroAvan/sImag));
teta2 = angContrib + teta1;
poloAvan = -tan(deg2rad(teta2))* sImag + sReal;
disp('Polo avanço:');
disp(poloAvan);
modul = Gfase*(s1 - zeroAvan)/(s1 - poloAvan);
modul = abs(modul);
kc = 1 / modul;
disp('Ganho kc:');
disp(kc);