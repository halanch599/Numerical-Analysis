function false_position( )

f = @(x) x.^3 - 2;
eps_step = 1e-5;
eps_abs = 1e-5;
a = 0.0;
b = 2.0;

x = a:0.01:b;
plot(x,f(x),'-b');
grid on;

N=100;
if ( f(a) == 0 )
    r = a;
    disp(['root is found at:', num2str(r)])
    return;
elseif ( f(b) == 0 )
    r = b;
    disp(['root is found at:', num2str(r)])
    return;
elseif ( f(a) * f(b) > 0 )
    disp( 'Cannot find the root' );
end

% We will iterate N times and if a root was not
% found after N iterations, an exception will be thrown.

c_old = Inf;
r=Inf;
for k = 1:N
    % Find the false position
    %c = (a*f(b) + b*f(a))/(f(b) - f(a));
    c = b- ((f(b)*(b-a))/(f(a)-f(b)));
    if ( f(c) == 0 )
        r = c;
        return;
    elseif ( f(c)*f(a) < 0 )
        b = c;
    else
        a = c;
    end
    
    % If |b - a| < eps_step, check whether or not
    %       |f(a)| < |f(b)| and |f(a)| < eps_abs and return 'a', or
    %       |f(b)| < eps_abs and return 'b'.
    
    if ( abs( c - c_old ) < eps_step )
        if ( abs( f(a) ) < abs( f(b) ) && abs( f(a) ) < eps_abs )
            r = a;
            disp(['root is found at:', num2str(r)])
            break;
        elseif ( abs( f(b) ) < eps_abs )
            r = b;
            disp(['root is found at:', num2str(r)])
 
        end
    end
        c_old = c;
end
hold on ;
    plot(r,f(r),'o');

    
%error( 'The method did not converge' );
end