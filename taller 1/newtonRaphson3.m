function [X,niter] = newtonRaphson3(x,tol)
% Método de Newton para sistemas de ecuaciones no lineales
% fi(x1,x2,...,xn) = 0, i = 1,2,...,n.
% .......
%

if nargin == 1; tol = 1.0e4*eps; end
if size(x,1) == 1; x = x'; end  % x debe ser un vector columna
I=zeros(1,1)

fprintf("k    X1     X2    errr\n")
X=x; E=1.0;
for i = 1:6
   [y, jac] = f(x); %evalua la matriz vectorial y la matriz jac
      dx = jac\(-y); %se resuelve sist de ec.
    x = x + dx;
    X=[X,x];
    I=[I,i];
    err=norm(dx,inf);
    E=[E;err];
    #fprintf("%d \t %d  \t %d \t %d\n",i,X(1),x(1),err)
    if  err< tol
        break
    end
end
 niter=i; X=[I' X' E];
 endfunction

 function [y, jac] = f(x)
 %derivadas parciales
  y = zeros (3, 1);
  y(1) = x(1)^2 + x(2)^2-x(3)-2;
  y(2) = x(1)^2-x(2)^2-x(3);
  y(3)=3*x(1)+2*x(2)-6*x(3);

  %matriz jac
    jac = zeros (3, 3);
    jac(1,1) =2*x(1);
    jac(1,2) =2*x(2);
    jac(1,3) =-1;
    jac(2,1) =2*x(1);
    jac(2,2) = -2*x(2);
    jac(2,3) =-1 ;
    jac(3,1) =3 ;
    jac(3,2) =2;
    jac(3,3) =-6 ;



   endfunction
