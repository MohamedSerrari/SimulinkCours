clc;
clear;

f0 = 10 ;
to = 1/2/pi/f0 ;
A0 = 1e5 ;
R = 1e4 ;
C = 1e-7 ;
K = 1e-2 ;


Gtf1 = tf([A0*R*C A0], [-K*R*C*to R*C*(1-K)-K*to 1+A0-K]);


figure();
bode(Gtf1);

clc;
clear;

f0 = 10 ;
to = 1/2/pi/f0 ;
A0 = 1e5 ;
R = 1e4 ;
C = 1e-7 ;
K = 1e-6 ;

Gtf2 = tf([A0*R*C A0], [-K*R*C*to R*C*(1-K)-K*to 1+A0-K]);

figure();
bode(Gtf2);


% s = tf('s');
% A = A0/(1+to*s)/(1-10*to*s) ;
% figure(2)
% bode(A)