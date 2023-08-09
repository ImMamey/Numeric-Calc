clear all;
xo=input('Introduzca el limite inferior xo    ');
yo=input('Introduce el valor de yo  ');
b=input('Introduzca el valor de b ');
n=input('Introduzca el numero de intervalos  ');
h=(b-xo)/n;
K1=h*fun2var(xo,yo);
K2=h*fun2var(xo+h,yo+K1);
x(1)=xo+h;
y(1)=yo+(K1+K2)/2;
i=1;
while i<n 
K1=h*fun2var(x(i),y(i));
K2=h*fun2var(x(i)+h,y(i)+K1);
y(i+1)=y(i)+(K1+K2)/2;
x(i+1)=x(i)+h;
i=i+1;
end
display(x);
display(y);