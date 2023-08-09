x=[0.25 0.30 0.45 0.36 0.48 0.65 0.7 1];
y=[0.2 0.65 0.25 0.15 0.5 0.45 0.70 1];
p=polyfit(x,y,2);
A=p(1);
B=p(2);
C=p(3);
plot(x,y,'*');
hold on;
x=linspace(0,6,100);
plot(x,A*x^2+B*x+C);
display(p);
