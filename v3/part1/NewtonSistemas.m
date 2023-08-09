x=input('Introduzca el valor de x de la semilla ');
y=input('Introduzca el valor de y de la semilla  ');
n=input('Introduzca el numero de iteraciones a realizar ');
for i=1:n
F=[sqrt(x)+sqrt(y)-2; x^2-y^2-3];
J=[(1/(2*sqrt(x))) (1/(2*sqrt(y))); 2*x -2*y];
S=[x ; y];
X=S-inv(J)*F;
x=X(1);
y=X(2);
display(X');
end 
 