%Anonimous: 
f = @(x)x.^3+3;                                           %our equation
format long                                             %setting the format
xl=-3 ;                %we take inputs here and define the variables
xu=3;
n=1000;
es=0.00001;
        
i=0;
xx= xl:0.01:xu;
figure(1);
plot(xx,f(xx));
if(f(xu)*f(xl)>0)
    disp('Root can''t be estimated');
    return;
end
while (i<=n)                              %conditions
    x_mid = (xl + xu)/2; 
    ea=abs((xu-x_mid)/xl)*100;
    if ( f(x_mid) == 0 )
       break;
    elseif ( f(xl)*f(x_mid) < 0 )                            %setting new mid point
       xu = x_mid;
    else
       xl = x_mid;
    end  
    if(ea<es)
        break;
    end
    i=i+1;
    figure(1);
    plot(xx,f(xx),x_mid,f(x_mid),'o');
    grid on;
    pause(0.5);
    
end
