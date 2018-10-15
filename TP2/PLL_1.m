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
%%Linéarisation avec linmod
[a,b,c,d] = linmod('PLL') ;
w = logspace(-1,6,1000) ;
[g,p] = bode(a,b,c,d,1,w) ;
gdB = 20*log10(g) ;
figure();
subplot(2,1,1);
semilogx(w,gdB(:,1));
title('Diagramme de Bode');
grid();
subplot(2,1,2);
semilogx(w,p(:,1));
title('Diagramme de Phase');
grid();

