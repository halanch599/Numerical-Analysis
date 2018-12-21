clear;
clc;
close all;

f1 = @(x) exp(-x);
f2= @(x)x;


n=10;
xold =0;
x= xold:0.1:n;
figure, plot(x,f1(x));
str = 'f(x) = e^{-x}';
text(1.5,0.5,str)

grid on;
hold on;
plot(x,f2(x));
str = 'f(x) = -x';
text(1.5,3.0,str)