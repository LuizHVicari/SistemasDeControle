A = [1, 2; -2, -3];
B = [0; 1];
C = [1, 0];
D = 0;
syms s;
Mat = inv(s*eye(2) - A)
[num, den] = ss2tf(A, B, C, D)