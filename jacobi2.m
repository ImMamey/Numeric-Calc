function x=jacobi2(A,b,tol)

D=diag(diag(A));
Tj=-inv(D)*(A-D);
c=inv(D)*b;
x0=[0;0;0];
rad=max(abs(eig(Tj)));

for k=1:100
  x=Tj*x0+c;
  err=norm(x-x0,inf);
  if err<tol
    break
   endif
   x0=x;
  endfor
