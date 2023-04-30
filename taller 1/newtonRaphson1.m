function [X,niter] = newtonRaphson1(x,tol)
% MÃ©todo de Newton para sistemas de ecuaciones no lineales
% fi(x1,x2,...,xn) = 0, i = 1,2,...,n.
% .......
% X: vector , niter: iteraciones

if nargin == 1; tol = 1.0e4*eps; end
if size(x,1) == 1; x = x'; end  % x debe ser un vector columna, si no: transpose
I = zeros(1,1); #
#fprintf('i     X1      X2      err\n')
X=x; E=1.0;
for i = 1:6
   [y, jac] = f(x); #se valua lafuncion vectorial y la matrizjacobiana, esta alfinal del archivo o se puede guardar en otro archivo
    dx = jac\(-y); # esto resuelve un sistema ecuacione de tipo ax=b
    x = x + dx; #
    I=[I,i]; # se actualiza las cantidades de iteraciones apilandolo en el vector
    X=[X,x]; # se cre un vector que contiene el vector inicial con otra omponente
    err=norm(dx,inf); # esto calcula el error con l norma
    E=[E;err]; # e errpr se guarda aqui por que se envia por el return
    #fprintf('%d\t %d\t %d\t %d\t\n', i, X(1), x(1), err )
    if  err< tol # esto es el critero de parada
        break # si e criterio se cumple entonces detiene todo el programa
    end
end
niter=i; X=[I' X' E]; # niter es el numero de iteraciones y x devuelve la matriz transpuesta de X y el error.
endfunction

function [y, jac] = f(x) #linea 14
y = zeros (3, 1); # tengo un sisema de dos filas con una columnas d epuros zeros
#y(1) = x(1)^2 + x(2).^2-x(3)-2; # es la primera funcion
#y(2) = x(1)^2-x(2)^2-x(3); # es la segunda funcion
#y(3)=3*x(1)+2*x(2)-6*x(3); # es la 3era funcion

  #Si uisiera un sistema con 2 funciones tendria que tener esto envez de lo anterior:
  y = zeros (2, 1);
  y(1) = 2*x(1)^2 + (x(2)-1)^2-2;
  y(2) = 3*x(1)^2-2*x(1)*x(2)-6*x(2)^2+3;

    # aqui se guardan los datos de las derivadas parciales de cada matriz jacobiana
    #jac = zeros (3, 3);
    #jac(1,1) =2*x(1);
    #jac(1,2) =2*x(2);
    #jac(1,3) =-1;
    #jac(2,1) =2*x(1);
    #jac(2,2) = -2*x(2);
    #jac(2,3) =-1;
    #jac(3,1) =3;
    #jac(3,2) =2;
    #jac(3,3) =-6;

    #Si fuese una matriz 2x2, tendiramos que guardar la posiciones de 4 posiciones envez d e 9
    jac = zeros(2,2);
    jac(1,1)=4*x(1);
    jac(1,2)=2*x(2)-2;
    jac(2,1)=6*x(1)-2*x(2);
    jac(2,2)=-2*x(1)*-12*x(2);
    endfunction
