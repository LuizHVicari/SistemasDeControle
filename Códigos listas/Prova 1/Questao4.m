%===Questão 4===
clear all;
clc;
Gs = tf(10, [1, 0, 2])
Gmf = feedback(Gs, 1)
step(Gmf)