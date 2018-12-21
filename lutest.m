%function [L, U] = LUdecompCrout(A)
clear;
clc;
%A= [2 -4 1;6 2 -1;-2 6 -2];
%A = [3 1 1; 1 2 2;2 1 3];
A = [ 1 1 -1;1 -2 3;2 3 1]
[R C] = size(A);
if R~=C
    disp('Rows!=Col');
    return;
end
n = R;
U  =  A;
L=eye(n);
for k=1:n
    if (U(k,k) == 0) 
        error('Error'); 
    end
    L(k+1:n,k)=U(k+1:n,k)/U(k,k);
    for j=k+1:n
        U(j,:)=U(j,:)-L(j,k)*U(k,:);
    end
end

% L=zeros(size(A));
% U=A;
% for i=1:n
%     for j=1:i
%         L(i,j) = A(i,j)/A(i,i);
%     end
% end
A
L
U
