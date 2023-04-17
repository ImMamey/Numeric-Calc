
function [raiz, numiter] = biseccion()
  # variables locales:
%f = funcion
%a = valor inicial a
%b = valor final b
%tol = tolerancia

# peticion de variables de entrada
a= input('Introduzca el valor de a:  ');
b= input('Introduzca el valor de b:  ');
tol= input('Introduzca la tolerancia:  ');
n = input('Introduzca el numero de iteraciones:  ');
str = input ('Introduzca la funcion:   ','s');

# carga de modelo inline
try
  f=inline(str);
catch
  printf("No se pudo procesar la función matematica\n (Error especifico: %s)", lasterr);
end_try_catch



fa = f(a);
fb=f(b);

for k=1:n
  c=(a+b)/2;
  #table builder
  fprintf('%d\t \t %d\t \t %d\t \t %d\t \t %d\t \n', a,b,fa,fb,c)
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
    if (fb<0) && (fa<0)
      printf("Error, fa y fb < 0.");
      break
    endif
  endfor
raiz=c;
numiter=k;
  #TODO:
  % [check] Un sript al usuario que pida: funcion, tolerancia, intervalos, y que el programa de la respuesta
  % [check] que de el resultado en modo de tabla
  % [check] que valide que fa y fb sea menor que 0 si no que de un error
  % [check] que escriba un guion que el usuario escriba el valor de la fucion, y se guarde la tolerancia

