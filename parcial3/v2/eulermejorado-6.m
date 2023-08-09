function M=eulermejorado(f,xo,yo,xf,n) %xf es el ount final y xo= punto inicial (a y b en la guía)
  h=(xf-xo)/n; 
  
  X=zeros(1,n+1);
  Y=zeros(1,n+1);
  X=xo:h:xf;
  Y(1)=yo;
  for j=1:n
    k1=feval(f,X(j),Y(j));
    k2=feval(f,X(j+1),Y(j)+h*k1);
    Y(j+1)=Y(j)+(h/2)*(k1+k2);
   endfor
   M=[X' Y'];
 endfunction