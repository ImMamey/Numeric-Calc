function L=lagrange(xpuntos,k,x)
L=1.0;
n=length(xpuntos);
for i=1:k
 L=L*(x-xpuntos(i))/(xpuntos(k+1)-xpuntos(i));
 end
for i=k+2:n
 L=L*(x-xpuntos(i))/(xpuntos(k+1)-xpuntos(i));
 end
end