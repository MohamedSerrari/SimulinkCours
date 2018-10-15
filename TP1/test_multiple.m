clc;
clear;

f0 = 10 ;
to = 1/2/pi/f0 ;
A0 = 1e5 ;
R = 1e4 ;
C = 1e-7 ;

K = linspace(0,1e-4,50);

figure()
hold on

for i=K
s = tf('s');
A = A0/(1+to*s)*(1/(1-10*to*s)-i) ;
bode(A);
end

hold off