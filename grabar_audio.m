
close all;
clear all;
clc;

t = 1;
Fs = 20000;
v = audiorecorder(Fs, 24, 1);
v.StartFcn = 'disp(''Inicio'')';
v.StopFcn = 'disp(''Fin'')';

input ('Presione enter para grabar la primera senal'); 
recordblocking(v, t)
y = v.getaudiodata();
audiowrite ('igualDA.wav',y,Fs); %guarda el sonido en formato wav%
% 
% input ('primera grabacion');
% sound(y,Fs);%reproduce sonido%
% 
% close all;
% clear all;%borra las variables del archivo%
% 
% s = audioread('grabacion3.wav');
% 
% s = normalizar(s);
% voz1 = abs(fft (s)); 



% subplot(3,1,1),plot(s); %relacion de posicion de la grafica%
% title ('Grabacion 1')
% 
% subplot(3,1,2),plot(voz1); % Espectro de la grabacion 1 
% title ('Espectro de la grabacion 1')
