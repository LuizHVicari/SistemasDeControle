% Forma canônica controlável:
clc
clear
num = 2;
den = [1, 3, 2];
G = tf(num, den);
A = [0, 1; -2, -3]
B = [0; 1]
C = [2, 0]
D = [0]
controlavel = ss(A, B, C, D)
observavel = ss(A', C', B', D')
eig(A)
P = [1, 1; -1, -2]
Adiag = inv(P)*A*P
Bdiag = inv(P)*B
Cdiag = C * P
Ddiag = D