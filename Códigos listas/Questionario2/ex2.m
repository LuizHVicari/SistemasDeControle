clear;
clc;
G = tf(1, [1, 10, 0]);
err = 0.1;
kv = 1 / 10;
kv_ = 1 / err;
disp('Constante de erro estático de velocidade:');
disp(kv_);
b = kv_ / kv;
disp('B');
disp(b);