clear;
clc;
close all;

A0 = 1e5 ;
f0 = 10 ;
R = 1e4 ;
C = 1e-7 ;
K = 1e-4 ;

numC = 1 ;
denC = [R*C 1] ;
numG = A0 ;
denG = [1/(2*pi*f0) 1] ;

w = logspace(p1,p2,N) ;
[a,b,c,d] = linmod('f_oscillateur') ;
[g,p] = bode(a,b,c,d,1,w) ;
gdB = 20*log10(g) ;
semilogx(w,gdB(:,1)) ;
semilogx(w,p(:,1)) ;
    
