%% performs Quadratic interpolation
clear; clc; close all;
x = [1,5,10]; 
f = @(x)log2(x);
y = f(x);
est = 8;
% our esimate f(est) =b0 + b1(x-x0)+b1(x-x0)(x-x1)
%b0 =f(x0)
%b1 = (f(x1) - f(x0))/(x1-x0)
%b2 = (((f(x2)-f(x1))/(x2-x1))-b2)/(x2-x0)

b(1)= f(x(1));
b(2) = (f(x(2)) - f(x(1)))/(x(2)-x(1));
temp=(f(x(3))-f(x(2)))/(x(3)-x(2));
b(3) =(temp-b(2))/(x(3)-x(1));
ev = b(1) + (b(2)*(est - x(1)) )+ (b(3)*(est-x(1))*(est-x(2))); 

figure, plot(x,y,'*-b',est,ev,'ro','MarkerSize',10); title('Quadratic Interpolation');
grid on
% error estimate
tv =log2(est);
es = abs((tv-ev)/log2(est))*100;

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
text(5,2,'Quadratic Estimation of ln(x)');



