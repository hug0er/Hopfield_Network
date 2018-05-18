close all;
clear all;
clc;

n = 1024;
n2 = (0:n-1);
mitad = n/2;

[signal,fs] = audioread('voces/Subir-juan.m4a');
signal = Recortar(signal);
t=linspace(0,length(signal)/fs,length(signal));

subplot(8,1,1);
plot(t,signal)
% axis([0.45 0.5 -inf inf])
title('Audio');
xlabel('Time');
ylabel('Signal Amplitude');

signal2 = normalizar(abs(fft(signal,n)));
subplot(8,1,2);
plot(abs(signal2(mitad-1:end)));
% axis([350 inf -inf inf])
ylabel('Values DFT');
xlabel('Frequency Sample');

[signal,fs] = audioread('voces/Abrir-hachi.m4a');
signal = Recortar(signal(:,1));
t=linspace(0,length(signal)/fs,length(signal));
print('PlotFFT','-dpng')

subplot(8,1,3);
plot(t,signal)
title('Audio 3');
xlabel('Time');
ylabel('Signal Amplitude');

signal3 = normalizar(abs(fft(signal,n)));
subplot(8,1,4);
plot(abs(signal3(mitad-1:end)));
ylabel('Values DFT');
xlabel('Frequency Sample');

[signal,fs] = audioread('voces/Bajar-hugo.m4a');
signal = Recortar(signal(:,1));
t=linspace(0,length(signal)/fs,length(signal));
print('PlotFFT','-dpng')

subplot(8,1,5);
plot(t,signal)
title('Audio 4');
xlabel('Time');
ylabel('Signal Amplitude');

signal4 = normalizar(abs(fft(signal,n)));
subplot(8,1,6);
plot(abs(signal4(mitad-1:end)));
ylabel('Values DFT');
xlabel('Frequency Sample');

[signal,fs] = audioread('voces/Casa-hugo.m4a');
signal = Recortar(signal(:,1));
t=linspace(0,length(signal)/fs,length(signal));
print('PlotFFT','-dpng')

subplot(8,1,7);
plot(t,signal)
title('Audio 5');
xlabel('Time');
ylabel('Signal Amplitude');

signal5 = normalizar(abs(fft(signal,n)));
subplot(8,1,8);
plot(abs(signal5(mitad-1:end)));
ylabel('Values DFT');
xlabel('Frequency Sample');

[signal,fs] = audioread('voces/Luz-hugo.m4a');
signal = Recortar(signal(:,1));
t=linspace(0,length(signal)/fs,length(signal));
signal6 = normalizar(abs(fft(signal,n)));

% [signal,fs] = audioread('voces/Luz-hugo.m4a');
% signal = Recortar(signal(:,1));
% signal1 = normalizar(abs(fft(signal,n)));
% 
% [signal,fs] = audioread('voces/Luz-hachi.m4a');
% signal = Recortar(signal(:,1));
% signal2 = normalizar(abs(fft(signal,n)));
% 
% [signal,fs] = audioread('voces/Luz-johana.m4a');
% signal = Recortar(signal(:,1));
% signal3 = normalizar(abs(fft(signal,n)));
% 
% [signal,fs] = audioread('voces/Luz-juan.m4a');
% signal = Recortar(signal(:,1));
% signal4 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/Luz-juan.m4a');
% signal = Recortar(signal(:,1));
% signal5 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/luz-kerly.m4a');
% signal = Recortar(signal(:,1));
% signal6 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/luz-pao.m4a');
% signal = Recortar(signal(:,1));
% signal7 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/Nube-hachi.m4a');
% signal = Recortar(signal(:,1));
% signal8 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/nube-carlos.m4a');
% signal = Recortar(signal(:,1));
% signal9 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/Nube-johana.m4a');
% signal = Recortar(signal(:,1));
% signal10 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/Papa-johana.m4a');
% signal = Recortar(signal(:,1));
% signal11 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/Papa-hachi.m4a');
% signal = Recortar(signal(:,1));
% signal12 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/Risa-hachi.m4a');
% signal = Recortar(signal(:,1));
% signal13 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/risa-pame.m4a');
% signal = Recortar(signal(:,1));
% signal14 = normalizar(abs(fft(signal,n)));
% 
% 
% [signal,fs] = audioread('voces/Sal-hugo.m4a');
% signal = Recortar(signal(:,1));
% signal15 = normalizar(abs(fft(signal,n)));