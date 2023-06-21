function I=simpson13(f,a,b,n)
#a y b son los limites de la integracion
#f es la funcion que le vamos a pasar
h=(a-b)/n; # n debe de ser par
# array con los numeros pares
xp=a+2*h:2*h:b-2*h;
#array con los numeros pares
xi=a+h:2*h:b-h;
I=(h/3)*(f(a)+4*sum(f(xi))+2*sum(f(xp))+f(b))
#o tambien podriamos hacerlo asi:
# I=(h/3)*(f(a)+4*sum(f(a+h:2*h:b-h))+2*sum(f(a+2*h:2*h:b-2*h))+f(b))



#====================
Esto seria hacerlo sin la funcion:
h=(2-0)/20
xp=a+2*h:2*h:b-2*h
xi=a+h:2*h:b-h
f=@(x)sqrt(1+x.^2)
I=(h/3)*(f(0)+4*sum(f(xi))+2*sum(f(xp))+f(2))
