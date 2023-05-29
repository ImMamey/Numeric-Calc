function x=seidel(A,b,tol)

D=diag(diag(A));
Td=-inv(tril(A))*(A-tril(A));
c=inv(tril(A))*b;
x0=[2;2;2];
rad=max(abs(eig(Td)));

for k=1:100

  x=Td*x0+c;
  err=norm(x-x0,inf);
  if err<tol
    fprintf("it #%d\n",k)
    break
   endif
   x0=x;
  endfor
