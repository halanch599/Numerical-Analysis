clear;
close all;
dx = 0.1;
x=-2:dx:4;
y=sin(x);

%exact derivative
dfdx= cos(x);
plot(x,y,'m-',x,dfdx,'k-','LineWidth',2);
grid on, hold on

axis([-2 4 -1.5 1.5])
%% Approximations
%Foward difference
 dfdxfoward = (sin(x+dx)-sin(x))/dx;
 %Backward difference
 dfdxbackward= (sin(x)-sin(x-dx))/dx;
 %Central difference
 dfdxcenter = (sin(x+dx)-sin(x-dx))/(2*dx);

 plot(x,dfdxfoward,'r--','LineWidth',2);
 plot(x,dfdxbackward,'g--','LineWidth',2);
 plot(x,dfdxcenter,'b--','LineWidth',2);
 l1=legend('Function','Derivative','Forward','Backward','Central');
 set(l1,'FontSize',14)