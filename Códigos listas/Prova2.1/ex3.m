A = [1, 2; -2, -3];
B = [0; 1];
C = [1, 0];
D = 0;
autovalores = [-15, -15];
N = obsv(A, C)
n = rank(N)
% polinomio caracteristico: s² + 30s + 225
phiA = A^2 + 30 * A + 225 * eye(n)
soma = 252 + 56 -56 + 140
K = acker(A', C', autovalores)' % vetor coluna