listaPao = {'voces/abrir-pao.m4a', 'voces/cerrar-pao.m4a','voces/luz-pao.m4a','voces/salir-pao.m4a','voces/entrar-pao.m4a'};
listaHugo = {'voces/Abrir-hugo.m4a','voces/Cerrar-hugo.m4a','voces/Luz-hugo.m4a','voces/Salir-hugo.m4a','voces/Entrar-hugo.m4a'} ;
listaDaniel= {'voces/abrirDA.wav','voces/cerrarDA.wav','voces/luzDA.wav','voces/salirDA.wav','voces/entrarDA.wav'};
listaAndres = {'voces/abrir - andres.mp3','voces/cerrar - andres.mp3','voces/luz - andres.mp3','voces/salir - andres.mp3','voces/entrar - andres.mp3'};

n = 600;
n2 = (0:n-1);
mitad = n/2;

finalPao = [];
for i=1 : length(listaPao)
    [signal,fs] = audioread(listaPao{i});
    signal = Recortar(signal);
    t=linspace(0,length(signal)/fs,length(signal));
    entrada = normalizar(abs(fft(signal,n)));
    entrada = entrada(mitad:end)';
    finalPao = [finalPao ; entrada];
end
finalPao= finalPao';

finalHugo = [];
for i=1 : length(listaHugo)
    [signal,fs] = audioread((listaHugo{i}));
    signal = Recortar(signal);
    t=linspace(0,length(signal)/fs,length(signal));
    entrada = normalizar(abs(fft(signal,n)));
    entrada = entrada(mitad:end)';
    finalHugo = [finalHugo ; entrada];
end
finalHugo = finalHugo';

finalDaniel = [];
for i=1 : length(listaDaniel)
    [signal,fs] = audioread((listaDaniel{i}));
    signal = Recortar(signal);
    t=linspace(0,length(signal)/fs,length(signal));
    entrada = normalizar(abs(fft(signal,n)));
    entrada = entrada(mitad:end)';
    finalDaniel = [finalDaniel ; entrada];
end
finalDaniel = finalDaniel';

finalAndres = [];
for i=1 : length(listaAndres)
    [signal,fs] = audioread((listaAndres{i}));
    signal = Recortar(signal);
    t=linspace(0,length(signal)/fs,length(signal));
    entrada = normalizar(abs(fft(signal,n)));
    entrada = entrada(mitad:end)';
    finalAndres = [finalAndres ; entrada];
end
finalAndres = finalAndres';
