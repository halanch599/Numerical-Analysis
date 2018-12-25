%% Oridinary Differential Equations
clear
clc
close all;
c=1;
f = @(x)-0.5*power(x,4)+ 4*power(x,3)- 10.*power(x,2)+ 8.5*x +c;
dfdx = @(x)-2.0*x.*x.*x + 12*x.*x - 20.*x+ 8.5;
h=0.01;
x=0:h:4;
y=f(x);
figure,plot(x,y,'r-',x,dfdx(x),'b-','LineWidth',2);
title('Derivation and Integation function')
grid on
%Estimate the derivative

yy(1)=1;
xx(1)=0;
er(1)=0;
for i=2:length(x)
    xx(i)=xx(i-1) + h;
    yy(i) =yy(i-1)+dfdx(xx(i-1))*h;
    tv =f(xx(i));
    er(i) = (abs(tv-yy(i)))/tv*100; 
end

for i=1:length(yy)
    hold on;
    plot(xx(i),yy(i),'r.',xx(i),f(xx(i)),'md','MarkerSize',7);
end

hold off
figure, plot(xx,er,'mo--','LineWidth',2),title('Error')
grid on