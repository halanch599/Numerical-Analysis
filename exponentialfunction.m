clear;
clc;
%close all;
% anonymous function
f = @(x) exp(-x)-x;
n=100;
xold =-5;
x= xold:0.1:n;
figure, plot(x,f(x));
str = 'f(x) = e^{-x}-x';
text(10.5,0.5,str)
grid on;

found=0;
es = 1e-5;
%xnew=-100000;
for k=0:n
    %find new value of x from old one
    xnew = exp(-xold);
    
    hold on;
   
    % calculate approximation error
    er = abs((xnew-xold)/xnew)*100;
    xold =xnew;
    fprintf('\t%d \t%f \t%f \t%f\n',k,xnew, xold,er)
    % check if approx. error is less than specified error then stop
    if(er<=es)
        plot(xnew,f(xnew),'o');
        found=1;
        break;
    end
end

% if(found==0)
%     plot(xnew,f(xnew),'o');
% end
    
