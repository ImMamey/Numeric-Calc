function p=polilagrange(f,xpuntos,x)
p=0.0;
n=length(xpuntos);
for i=0:n-1
   p=p+f(xpuntos(i+1))*lagrange(xpuntos,i,x);
 end
end
