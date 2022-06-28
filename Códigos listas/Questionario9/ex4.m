clear
clc
A = [0, 0, 0; 1, 0, -12; 0, 1, -7]
B = [3; 0; 1]
C = [0, 0, 1]
D = 0
state = ss(A, B, C, D)
[num, den] = ss2tf(A, B, C, D)