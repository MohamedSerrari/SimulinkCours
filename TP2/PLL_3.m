clear
clc
close all


%%Définition des paramètres du problème
G0 = 1e3 ; 
tau = 5e-5 ;
Vm = 10 ;
N = 10 ;
RC = 2e-4 ;
F_ref = 0 ;

%%Définition des fonctions de transferts


nomC = Vm ;
denC = [1 0] ;
w1 = 4.67e3 ;
w2 = 21.4e3 ;
K0 = 11.7 ;


[t,x,y] = sim('PLL__2') ;
plot(t,x) ;
