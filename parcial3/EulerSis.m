function M=EulerSis(f,g,to,xo,yo,tf,n)
h=(tf-to)/n;
X=zeros(1,n+1); Y=zeros(1,n+1);
X(1)=xo; Y(1)=yo;
T=to:h:tf;
for j=1:n
  k=f(T(j),X(j),Y(j)); l=g(T(j),X(j),Y(j));  
  X(j+1)=X(j)+h*k; Y(j+1)=Y(j)+h*l;
endfor
M=[T' X' Y'];