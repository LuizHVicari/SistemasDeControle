%===Questão 3===
clc
Gs = tf(2, [1, 4, 6, 4])
figure;
step(Gs)
pole(Gs)
Gmf = feedback(Gs, 1)
figure
step(feedback(Gmf*9, 1))