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