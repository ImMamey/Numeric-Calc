# ecuaciones oridnarias de euler mejorado, para dar la posicion en cada punto de la malla (PDF)
# se hara en bucle, si tenemos n, ya sabremoc cuantos veces se repetira el bucle

function M=eulermejorado(f,xo,yo,xf,n)
  h=(xf-xo)/n; # en la guia esta como a y b, aqui es entre xf y xo
  
  X=zeros(1,n+1); # creamos las dos matrices y las rellenerames al gfinal
  Y=zeros(1,n+1);
  X=xo:h:xf; 
  Y(1)=yo;
  for j=1:n
    k1=feval(f,X(j),Y(j)); #esa es la evaluacion de la funcion
    k2=feval(f,X(j+1),Y(j)+h*k1);
    Y(j+1)=Y(j)+(h/2)*(k1+k2); 
  endfor
  M=[X' Y'];
  endfunction