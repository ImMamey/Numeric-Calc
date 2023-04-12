
function [raiz, numiter] = biseccion (f,a,b,tol)
%f = funcion
%a = valor inicial a
%b = valor final b
%tol = tolerancia

fa = f(a);
fb=f(b);

for k=1:500
  c=(a+b)/2;
    if abs(b-c)<tol
      break
     endif
  fc=f(c);
  if sign(fb) == sign(fc)
    b=c;
    fb=fc;
   else
    a=c;
    fa=fc;
   endif
  endfor
raiz=c;
numiter=k; 
  
  % Un sript al usuari que pida: funcion, tolerancia, intervalos, y que el programa de la respuesta
  % que de el resultado en modo de tabla
  % que valide que fa y fb sea menor que 0
  % si no que de un error
  % qu escriba un guion que el usuario escriba el valor de la fucion, y se guarde la tolerancia
     