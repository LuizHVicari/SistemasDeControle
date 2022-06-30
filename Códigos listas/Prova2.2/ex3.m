clc
clear

% declaracao das matrizes
A = [1, 2; -2, -3];
B = [1; 0];
C = [0, 1];
D = 0;


% matrizes com integral de erro
A_ = [1, 2, 0; -2, -3, 0; 0, -1, 0];
B_ = [1; 0; 0];
C_ = [0, 1, 0];
D_ = D;

polos_desejados = [-5, -5, -30];

% calculo da matriz de controlabilidade
M = ctrb(A_, B_)
post_ctrb = rank(M)
soma_ctrb = 1 + 1 -3 -2 + 4 + 2

% polinomio caracteristico: s³+40s²+325s+750
soma_polinomio = 1 + 40 + 325 + 750

% vetor de ganhos
Ke = acker(A_, B_, polos_desejados)