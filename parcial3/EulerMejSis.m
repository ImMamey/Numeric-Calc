function M=EulerMejSis(f,g,to,xo,yo,tf,n)
h=(tf-to)/n;
X=zeros(1,n+1); Y=zeros(1,n+1);
X(1)=xo; Y(1)=yo;
T=to:h:tf;
for j=1:n
  k1=f(T(j),X(j),Y(j)); ll=g(T(j),X(j),Y(j));
  k2=f(T(j+1),X(j)+h*k1,Y(j)+h*ll); l2=g(T(j+1),X(j)+h*k1,Y(j)+h*ll);  
  X(j+1)=X(j)+0.5*h*[k1+k2]; Y(j+1)=Y(j)+0.5*h*[ll+l2];
endfor
M=[T' X' Y'];