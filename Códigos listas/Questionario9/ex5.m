clear
clc
A = [-1, 0; 0, -2]
B = [1; 1]
C = [1, -1]
D = 0
state = ss(A, B, C, D)
[num, den] = ss2tf(A, B, C, D)