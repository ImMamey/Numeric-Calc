a=input('Introduzca el valor de a   ');
b=input('Introduzca el valor de b   ');
e=input('Introduzca la tolerancia   ');
N=input('Introduzca el valor de N   ');
fa=funcion(a);
fb=funcion(b);
fprintf('a\t b\t fa\t fb\t R\t FR\n');
fprintf('---------------------------------\n');
I=1;
while I<=N
r=(a*fb-b*fa)/(fb-fa);
fr=funcion(r);
fprintf('%d\t %d\t %d\t %d\t %d\t %d\n',a,b,fa,fb,r,fr);
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