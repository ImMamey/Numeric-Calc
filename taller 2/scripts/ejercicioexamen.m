#escribir cada linea de comando:

x=[2,3,3.5,4] #Array X
y=[4.5,5.2,6.1,6.2] #Array y
a=polyfit(x,y,3)  #returns los coeficientes para un polinomio p(x) de grado 3 que mejr se ajuste a los datos de X y Y, y los guarda en A
#plot(x,y) #Opcional_ Crea grafica de los datos de X y Y
#polyout(a,"x") #Opcional: genera a "a" como polinomio en formato/en base a "x"
f=@(x)#Colocar aqui lo que de polyout, colocar los . antes de cada elevado ^
ezplot(f) # se grafica la funcion
ezplot(f,[2,4]) # graficamos la funcion desde x[0] hasta x[length(x)]

