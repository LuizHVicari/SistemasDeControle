clear;
clc;
s = -0.99 + 0.99*1i;
kc_ = 1 / abs((s + 0.01) * 2/((s + 0.001)*s*(s+2)));
disp('Kc:');
disp(kc_);