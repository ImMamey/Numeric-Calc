function I=simpson13(f,a,b,n)
  h=(b-a)/n; %n debe ser pare
  xp=a+2*h:2*h:b-2*h;
  xi=a+h:2*h:b-h;
  I=(h/3)*(f(a)+4*sum(f(xi))+2*sum(f(xp))+f(b));
endfunction
#o tambien podriamos hacerlo asi:
# I=(h/3)*(f(a)+4*sum(f(a+h:2*h:b-h))+2*sum(f(a+2*h:2*h:b-2*h))+f(b))



#====================
#Esto seria hacerlo sin la funcion:
#h=(2-0)/20
#xp=a+2*h:2*h:b-2*h
#xi=a+h:2*h:b-h
#f=@(x)sqrt(1+x.^2)
#I=(h/3)*(f(0)+4*sum(f(xi))+2*sum(f(xp))+f(2))


#====================
#si necesito mas dcimales
#format long
# Otro ejemplo llamando a la funcion:
#I=simpson13(@(x)exp(-x.^2),0,1,10)
#esto daria I=0.74682
# Si quiero aumentar las cifras exactas, aumento el tamaño de N:
#I=simpson13(@(x)exp(-x.^2),0,1,100)
#I=simpson13(@(x)exp(-x.^2),0,1,10000)
#I=simpson13(@(x)exp(-x.^2),0,1,1000000)
