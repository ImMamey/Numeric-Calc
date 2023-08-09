x=input('Introduzca el valor de x de la semilla ');
y=input('Introduzca el valor de y de la semilla  ');
z=input('Introduzca el valor de z de la semilla  ');
n=input('Introduzca el numero de iteraciones a realizar ');
for i=1:n
F=[3*x-cos(y*z)-0.5; x^2-81*(y+0.1)^2+sin(z)+1.06;exp((-1)*x*y)+20*z+9.47];
J=[3 z*sin(y*z) y*sin(y*z); 2*x -162*(y+0.1) cos(z); (-1)*y*exp((-1)*x*y) (-1)*x*exp((-1)*x*y) 20];
S=[x ; y;z];
X=S-inv(J)*F;
x=X(1);
y=X(2);
z=X(3);
display(X');
end 
 