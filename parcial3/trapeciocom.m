function T=trapeciocom(f,a,b,n)
#a es el primer valor (f(0))
#b es el ultimo valor (f(n))
  fa=f(a); fb=f(b);
  if n==1 #si n vale igual a 1 es la regla simple
    T(b-a)*(fa+fb)/2;
  else  #si no evaluo
    h=(b-a)/n;
    x=a+h:h:b-h;
    fx=f(x); #evaluo la funcion
    s=sum(fx); #sumo la funcion y la guardo en s
    T=(h/2)*(fa+2*s+fb); #uso la formula
   endif #termina el programa y devuelve T
endfunction
