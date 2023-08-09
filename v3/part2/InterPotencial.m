x=[1 2 3 4 5];
y=[0.3 0.7 1.7 4.1 6.2];
Y=log(y);
X=log(x);
p=polyfit(X,Y,1);
A=p(1);
B=p(2);
b=exp(B);
plot(x,y,'*');
hold on;
x=linspace(1,6.5,100);
plot(x,b*(x.^A));
A=p(1)
b=exp(B)


