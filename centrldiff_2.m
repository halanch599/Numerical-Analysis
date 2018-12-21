clear;
close all;
dx = 0.1;
x=2:dx:4;
f = @(x)x.*x + 2*x;
%exact derivative
dfdx= @(x)2*x + 2;

plot(x,f(x),'m--',x,dfdx(x),'y-','LineWidth',2);
grid on, hold on

%axis([-2 4 -1.5 1.5])
%% Approximations
x=3;
%Foward difference
 dfdxfoward = (f(x+dx)-f(x))/dx;
 %Backward difference
 dfdxbackward= (f(x)-f(x-dx))/dx;
 %Central difference
 dfdxcenter = (f(x+dx)-f(x-dx))/(2*dx);

 plot(x,dfdxfoward,'ro','LineWidth',2);
 plot(x,dfdxbackward,'go','LineWidth',2);
 plot(x,dfdxcenter,'bo','LineWidth',2);
 l1=legend('Function','Derivative','Forward','Backward','Central');
 set(l1,'FontSize',14)