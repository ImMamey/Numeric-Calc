#ejercicioexamen2

x=[1 1.5 2 2.5]  #Array X
y=[1.3 3.5 4.2 6.1]   #Array y
x1=1:0.01:2.5; # desde x[0] hasta length(x) con pasos de 0.01
y1=interp1(x,y,x1)
plot(x1,y1,x,y,'o')

#luego:
aa=polyfit(x,y,3)
polyout(aa,'x') #copiamos la funcion resultante y colocamos . antes de los ^
f=@(x)#pegar aqui lo anterior
ezplot(f,[1,2.5]) # graficamos desde x[0] hasta leght(x)

