clear;
clc;
close all;

x = 0:0.1:1; 
f = @(x)2*x.*x.*x +2.*x.*x -3;
y = f(x);

est = 0.5;
inter = interp1(x,y,est);
figure, plot(x,y,'-r',est,inter,'*')
grid on