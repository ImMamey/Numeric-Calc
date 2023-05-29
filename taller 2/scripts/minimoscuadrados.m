
x=[1 2 3 4 5]; # array X
y=[0.5 1 2.43 3.6 4.3]; #array y

# o si queremos cargar la data desde un .data:
load data2 # load <nombre del archivo>
#opcional #plot(x,y,'o') # hace plotting de la data

#para polinomio de grado 2
p=polyfit(x,y,2) # creamos un polinomio de grado "2" que se adapte a la data de x ^ y
xx=1:0.01:3; # desde x[0] hasta lenght(x) # en el caso nuestro x en data es de 1 a 3, su usamos el array, seria de 1 a 5
yy = polyval(p,xx);
#Opcional: #plot(x,y,'o',xx,yy) #graficamos el resultado del polinomio de grado 2
#error para el polinomio de grado 2
ye=polyval(p,x);
e=sum((y-ye).^2) # calculamos el error

#para polinomio de grado 1
p1=polyfit(x,y,1)# creamos un polinomio de grado 1 que sa adapte a la data de x^y
xx=1:0.01:3;
yy1=polyva1(p1,xx)
#Opcional: #plot(x,y,'o',xx,yy1) # graficamos el resultado del polinomio de grado 1
#error para el polinomio de grado 1
ye1=polyval(p1,x);
e=sum((y-ye1).^2)

#para polinomio de grado 3
p3=polyfit(x,y,3)
xx=1:0.01:3;
yy3=polyval(p3,xx);
#error del polinomio de grado 3:
ye3=polyval(p3,x);
e=sum((y-ye3).^2)

#graficar los 3:
 subplot(3,1,1)
 plot(x,y,'o',xx,yy1)
 subplot(3,1,2)
 plot(x,y,'ro',xx,yy)
 subplot(3,1,3)
 plot(x,y,'bro',xx,yy3)

