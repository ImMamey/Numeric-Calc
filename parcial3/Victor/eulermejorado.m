# ecuaciones oridnarias de euler mejorado, para dar la posicion en cada punto de la malla (PDF)
# se hara en bucle, si tenemos n, ya sabremoc cuantos veces se repetira el bucle

#{
Ejemplo 1 (ejercicio 1 guia de Euler mejorado)
| dy/dx: y+x^2,0<=x<=0.3
| y)(0)= 1

Para calcular este ejercicio por euler en la consola escribiriamos:
f=@(x,y)y+x.^2
M=euler(f,0,1,0.3,3)
Donde: euler(funcion, valor inicial (a), valor de y(0), valor final (b), numero de iteraciones)
#}

#{
Ejemplo 2 (ejercicio 1 de la guia de euler (anuncios practica))
| dy/dx: 3x +3y
| y(0) = 1, 0>=x<=1
con n=10

Escribir por consola:
f=@(x,y)3*x+3*y
M=euler(f,0,1,1,10)
Donde: euler(funcion, valor inicial (a), valor de y(0), valor final (b), numero de iteraciones)

#}

function M=eulermejorado(f,xo,yo,xf,n)
  h=(xf-xo)/n; # en la guia esta como a y b, aqui es entre xf y xo

  X=zeros(1,n+1); # creamos las dos matrices y las rellenerames al gfinal
  Y=zeros(1,n+1);
  X=xo:h:xf;
  Y(1)=yo;
  for j=1:n
    k1=feval(f,X(j),Y(j)); #esa es la evaluacion de la funcion
    k2=feval(f,X(j+1),Y(j)+h*k1);
    Y(j+1)=Y(j)+(h/2)*(k1+k2);
  endfor
  M=[X' Y'];
  endfunction
