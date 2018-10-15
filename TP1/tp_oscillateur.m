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



[x,y,z] = sim('t_oscillateur') ;
figure(1); 
plot(temps,V0);