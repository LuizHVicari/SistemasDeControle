clear
clc
A = [0, 1, 0; 0, 0, 1; -6, -11, -6]
B = [0; 0; 1]
C = [2, 1, 0]
D = 0
state = ss(A, B, C, D)
[num, den] = ss2tf(A, B, C, D)