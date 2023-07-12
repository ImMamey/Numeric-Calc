function M=Rk4Sist(f,g,to,xo,yo,tf,n)
h=(tf-to)/n; #
X=zeros(1,n+1); Y=zeros(1,n+1); #generamos los valores de los vecotres
X(1)=xo; Y(1)=yo;
T=to:h:tf;
for j=1:n
k1=f(T(j),X(j), Y(j)); #escribimos las formulas de rk4
ll=g(T(j),X(j), Y(j));
k2=f(T(j)+h/2,X(j)+h*k1/2,Y(j)+h*ll/2);
l2=g(T(j)+h/2,X(j)+h*k1/2,Y(j)+h*ll/2);
k3=f(T(j)+h/2,X(j)+h*k2/2,Y(j)+h*l2/2);
l3=g(T(j)+h/2,X(j)+h*k2/2,Y(j)+h*l2/2);
k4=f(T(j)+h,X(j)+h*k3,Y(j)+h*l3);
l4=g(T(j)+h,X(j)+h*k3,Y(j)+h*l3);
Y(j+1)=X(j)+(h/6)*[k1+2*k2+2*k3+k4]; Y(j+1)=Y(j)+(h/6)*[ll+2*l2+2*l3+l4];
endfor
M=[T' X' Y'];