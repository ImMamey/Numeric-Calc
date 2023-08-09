m=input('Introduzca el numero de filas  ');
n=input('Introduzca el numero de columnas  ');
D=zeros(n);
A=zeros(n);
C=zeros(n);
for i=1:m
for j=1:n
fprintf('A(%d,%d)=',i,j);
A(i,j)=input(' ');
end
end
display('Introduzca los terminos independientes ');
for i=1:n
fprintf('b(%d)=',i);
bi(i)=input(' ');
end
display('Introduzca la semilla ');
for i=1:n
fprintf('x(%d)=',i);
xi(i)=input(' ');
end
b=bi';
x=xi';
for i=1:n
D(i,i)=A(i,i);
end
C=A-D;
k=inv(D)*b;
J=-inv(D)*C;
h=1;
N=input('Introduzca el numero maximo de iteraciones  ');
display(x');
while h<=N 
y=k+J*x;
h=h+1;
display(y');
x=y;
end