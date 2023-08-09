
a=input('Introduzca el limite inferior  ');
b=input('Introduzca el limite superior  ');
n=input('Introduzca el numero de intervalos  ');
suma=0;
h=(b-a)/n;
x0=a;
y0=funcion(a);
suma=suma+0.5*y0;
for i=1:n-1
x(i)=x0+h;
y(i)=funcion(x(i));
suma=suma+y(i);
x0=x(i);
endfor
x(n)=x0+h;
y(n)=funcion(x(n));
suma=suma+0.5*y(n);
integral=suma*h