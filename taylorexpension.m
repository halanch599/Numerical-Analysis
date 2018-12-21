clear;
close all;
x=-10:.01:10;
y=sin(x);
plot(x,y,'k',0,0,'ro','LineWidth',2);
axis([-10 10 -10 10])
grid on, hold on

%% First order Taylor seriex
 p =[1 0];
 y1 = polyval(p,x);
 plot(x,y1,'b--','LineWidth',2);
 
%% Third order Taylor seriex
 p =[-1/factorial(3) 0 1 0];
 y3 = polyval(p,x);
 plot(x,y3,'g--','LineWidth',2);

 %% Fifth order Taylor seriex
 p =[1/factorial(5) 0 -1/factorial(3) 0 1 0];
 y5 = polyval(p,x);
 plot(x,y5,'c--','LineWidth',2);

 
 %% 7th order Taylor seriex
 p =[-1/factorial(7) 0 1/factorial(5) 0 -1/factorial(3) 0 1 0];
 y7 = polyval(p,x);
 plot(x,y7,'m--','LineWidth',2);

 
  %% 9th order Taylor seriex
 p =[1/factorial(9) 0 -1/factorial(7) 0 1/factorial(5) 0 -1/factorial(3) 0 1 0];
 y9 = polyval(p,x);
 plot(x,y9,'y--','LineWidth',2);
