function [P,inf,Q,L]=GK(X,u,k)
eps=0.001;
[n,m]=size(X);
if u==1,G=X'*X;end
if u==2,G=X; end
L=[];Q=[];
for j=1:k
    q=ones(m,1);
q=q/sqrt(q'*q);
    ind=1;
    while ind>eps
    q0=q;
    s=sqrt(q'*G*G*q);
    q=G*q/s;
    ind=norm(q0-q);
    end
    Q=[Q,q];
    L=[L,s];
    G=G-s*q*q';
end
inf=sum(L(1:k))/trace(X'*X);
if u==1,P=X*Q*diag(1./sqrt(L));end
if u==2,P=Q;end
%
% plot(P(:,1),P(:,2),'.','markersize',20)

    