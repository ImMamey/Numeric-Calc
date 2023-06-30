# integral de longitudes de arco
h=(pi/2-0)/10; # h=a-b/n
f=@(x)sqer(1+(cos(x)).^2)
f(0) # esto deberia de dar 1.4142
f(pi/2) # esto deberia de dar 1
quad(f,0,pi/2) #la funcion cuadrada (cuadratura gausiana) evaluada desde 0 a pi/2, para saber el valor de real de una funion lista en octave para calcular

#tenemos a h:
h=(pi/2-0)/10;
#tenemos a la funcion:
f=@(x)sqer(1+(cos(x)).^2)
#ahora tenemos que aplicar la formula: h/2()(F(0)+2 sumaorial (f)a+x+f(pi/2)
# por lo tanto usaremos la funcion sum para sumar los vetores
# ya tenemos f(0) y f(pi/2)
x=0:h:pi/2 # esto me da un verctore de 11 columnmas
# me interesa un vector quitando os extremos, es decir del x(2) al x(10)
x(2):h:x(10)

#es deir que si yo sumo esto, obtengo la sumatoria de la formula:
sum(x(2):h:x(10))
# la formula seria_
(h/2)*(f(0)+2*sum(x(2):h:x(10))+f(pi/2)) #esto deberia de dar 1.2999
# OJOOO ^ Este codigo esta malo ya que no evaluo en X, ver el codigo de la funcion de abajo que si funciona

#como funcion:
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

#para llamar esta funcion deberia de llamarla asi:
trapeciocom(f,0,pi/2,10)
# esto daria: T=1.9191
#ahora si pongo en lugar de 10, 50m ek resultado sera mas exacto
trapeciocom(f,0,pi/2,500)
# esto daria: T=1.91009889451383
#llega un punto que no importa que tan grande pongamos a n, el resultado no deberia cambiar.

#si uso la funcion quad(f,0,pi/2) esto me daria: ans=1.91009889451386
