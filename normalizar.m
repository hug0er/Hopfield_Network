function [snd_norm] = normalizar(sonido)
maximo = max(abs(sonido));
n = length(sonido);
snd_norm = zeros(n,1);
for i = 1:1:n
    snd_norm(i) = sonido(i)/maximo;
end
end