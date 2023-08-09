m=input('Introduzca el numero de filas  ');
n=input('Introduzca el numero de columnas  ');
L=zeros(n);
A=zeros(n);
U=zeros(n);
for i=1:m
for j=1:n
fprintf('A(%d,%d)=',i,j);
A(i,j)=input(' ');
end
end
display('Introduzca los términos independientes ');
for i=1:n
fprintf('b(%d)=',i);
bi(i)=input(' ');
end
display('Introduzca la semilla ');
for i=1:n
fprintf('x(%d)=',i);
xi(i)=input(' ');
end
for i=1:m
for j=1:n
if j>i U(i,j)=A(i,j);
else 
L(i,j)=A(i,j);
endif
end
end
b=bi';
x=xi';
k=inv(L)*b;
S=-inv(L)*U;
h=1;
N=input('Introduzca el numero de iteraciones ');
display(x');
while h<=N 
y=k+S*x;
h=h+1;
display(y');
x=y;
end