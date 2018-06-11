function Nsonido = normalizar(sonido)
maximo = max(abs(sonido));
n = length(sonido);
Nsonido = zeros(1,n);
for i=1:1:n
    Nsonido(i)= sonido(i)/maximo;
end
end

    