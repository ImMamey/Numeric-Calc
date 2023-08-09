i=1;
n=input('Numero de Iteraciones  ');
s=input('Introduzca la semilla o valor inicial  ');
e=input('Introduzca la tolerancia   ');
n=n+1;
fprintf('%d\t %d\t %d\n',s,funcion(s),dfuncion(s));
while i<=n
r=s-(funcion(s)/dfuncion(s));
fprintf('%d\t %d\t %d\n',r,funcion(r),dfuncion(r));
fr=funcion(r);
  if abs(fr)<e 
     i=n+2;
  else
s=r;
i=i+1;
endif;
endwhile;