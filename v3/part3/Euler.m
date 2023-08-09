xo=input('Introduzca el limite inferior  ');
yo=input('Introduce el valor de yo  ');
b=input('Introduzca el valor de b ');
n=input('Introduzca el numero de intervalos  ');
h=(b-xo)/n;
y(1)=yo+h*fun2var(xo,yo);
x(1)=xo+h;
m=n-1;
i=1;
while i<n 
y(i+1)=y(i)+h*fun2var(x(i),y(i));
x(i+1)=x(i)+h;
i=i+1;
end
display(x);
display(y);