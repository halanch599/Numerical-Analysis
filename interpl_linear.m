
%% performs linear interpolation
clear;
clc;
close all;
%intiail points
x = [1,10]; 
f = @(x)log2(x);
y = f(x);
%estimation point
est = 5;
%built-in function
%inter = interp1(x,y,est);
%figure, plot(x,y,'o-r',est,inter,'*');title('Built-in interpolation');
%grid on;
% our esimate f(est) = f(x0) + (f(x1) - f(x0))/(x1-0)* (est-x0)
ev = f(x(1)) + (f(x(2)) - f(x(1)))/(x(2)-x(1))*(est-x(1));
figure, plot(x,y,'*-b',est,ev,'ro','MarkerSize',10); title('Linear Interpolation');
grid on
% plot original function
xx =min(x):01:max(x);
yy=f(xx);
hold on;
plot(xx,yy,'--b',est,f(est),'dk', 'MarkerSize',10);
% error estimate
tv =log2(est);
es = abs((tv-ev)/tv)*100;
str = (['Estimated Error = ', num2str(es),'%']);
text(5,0.2,str);
text(4,2.5,'f(x)=ln(x)');
text(6,1.5,'linear estimation of ln(x)');

