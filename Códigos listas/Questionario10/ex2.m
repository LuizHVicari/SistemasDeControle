clc
clear
A = [0, 1; -4, -4]
B = [0; 1]
C = [1, 0]
D = 0
state = ss(A, B, C, D)
eig(A)
syms s;
phi_s = inv(s*eye(2)-A)
phi = ilaplace(phi_s)
syms t t_
% por que isso?
f1 = (t-t_)*exp(-2*(t-t_))
f2 = 0
f3 = exp(-2*(t-t_))
f4 = -2*(t-t_)*exp(-2*(t-t_))
integral1 = int(f1, t_, 0, t) + int(f2, t_, 0, t)
integral2 = int(f3, t_, 0, t) + int(f4, t_, 0, t)

x = 1/6 + 1/3 - 1/2