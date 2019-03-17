load('DSW.mat')
load('DSL.mat')
load('DMW.mat')
load('DML.mat')
plot(desvioml,'r')
hold on
plot(desviomw,'k')
hold on
plot(desviosw,'y')
hold on
plot(desviosl,'b')
axis([600 1000 0 4])
title('Desvio Padrão')