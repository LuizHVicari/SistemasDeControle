clear
clc
A = [-2, 1; 0, -2]
B = [0; 1]
C = [1, 0]
D = 0
state = ss(A, B, C, D)
[num, den] = ss2tf(A, B, C, D)