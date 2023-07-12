function M=rk4(f,xo,yo,xf,n)
h=(xf-xo)/n; #
X=zeros(1,n+1); Y=zeros(1,n+1); #generamos los valores de los vecotres
Y(1)=yo;
X=xo:h:xf;
for j=1:n
k1=f(X(j), Y(j)); #escribimos las formulas de rk4
k2=f(X(j)+h/2,Y(j)+h*k1/2);
k3=f(X(j)+h/2,Y(j)+h*k2/2);
k4=f(X(j)+h,Y(j)+h*k3);
Y(j+1)=Y(j)+(h/6)*[k1+2*k2+2*k3+k4];
endfor
M=[X' Y'];