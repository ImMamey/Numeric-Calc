clear all;
xo=input('Introduzca el limite inferior xo    ');
yo=input('Introduce el valor de yo  ');
b=input('Introduzca el valor de b ');
n=input('Introduzca el numero de intervalos  ');
h=(b-xo)/n;
p(1)=yo+h*fun2var(xo,yo);
x(1)=xo+h;
c(1)=yo+h*(fun2var(xo,yo)+fun2var(x(1),p(1)))/2;
m=n-1;
i=1;
while i<n 
p(i+1)=c(i)+h*fun2var(x(i),c(i));
x(i+1)=x(i)+h;
c(i+1)=c(i)+h*(fun2var(x(i),c(i))+fun2var(x(i+1),p(i+1)))/2;
i=i+1;
end
display(x);
display(c);