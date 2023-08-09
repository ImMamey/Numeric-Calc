a=input('Introduzca el valor de a   ');
b=input('Introduzca el valor de b   ');
e=input('Introduzca la tolerancia   ');
N=input('Introduzca el valor de N   ');
fa=funcion(a);
fb=funcion(b);
fprintf('a\t \t b\t \t fa\t \t fb\t \t R\t \t FR\n');
fprintf('-----------------------------------------------------\n');
I=1;
while I<=N
r=(a+b)/2;
fr=funcion(r);
fprintf('%d\t \t %d\t \t %d\t \t %d\t \t %d\t \t %d\n',a,b,fa,fb,r,fr);
  if abs(fr)<e 
     I=N+1;
  else
    if fa*fr <0
       b=r;
       fb=fr;
       else
       a=r;
       fa=fr;
    endif;
  endif;
endwhile;