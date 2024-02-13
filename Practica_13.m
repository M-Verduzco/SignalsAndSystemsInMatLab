%
% Práctica 13 - Mauricio Verduzco
%

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
%                   %ButterWorth
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fs=500000;
% f=1000;
% nCyl=5;
% t=0:.5/fs:nCyl*1/f;
% x1=sin(2*pi*f*t);
% subplot(6, 3, 1)
% plot(t,x1);title('seno1 de 1000');
% 
% f=3000;
% x2=sin(2*pi*f*t);
% subplot(6, 3, 2)
% plot(t,x2);title('seno2 de 3000');
% 
% f=5000;
% x3=sin(2*pi*f*t);
% subplot(6, 3, 3)
% 
% plot(t,x3);title('seno3 de 5000')
% subplot(6, 3, [4,6])
% 
% xf=x1+x2+x3;
% plot(t,xf);title('seno Final')
% 
% 
% %aplicado a la primera señal
% fc=2000;
% fs=5000;
% [b,a]=butter(6,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xa=filter(b,a,x1);
% subplot(6, 3, 7)
% plot(t,xa);title('seno 1 filtro 2000')
% 
% fc=4000;
% fs=5000;
% [b,a]=butter(5,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xb=filter(b,a,x1);
% subplot(6, 3, 8)
% 
% plot(t,xb);title('seno 1 filtro 4000')
% 
% fc=6000;
% fs=5000;
% [b,a]=butter(7,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xc=filter(b,a,x1);
% subplot(6, 3, 9)
% plot(t,xc);title('seno 1 filtro 6000')
% 
% %aplicado a la segunda señal
% fc=2000;
% fs=5000;
% [b,a]=butter(6,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xa=filter(b,a,x2);
% subplot(6, 3, 10)
% plot(t,xa);title('seno 2 filtro 2000')
% 
% fc=4000;
% fs=5000;
% [b,a]=butter(5,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xb=filter(b,a,x2);
% subplot(6, 3, 11)
% 
% plot(t,xb);title('seno 2 filtro 4000')
% 
% fc=6000;
% fs=5000;
% [b,a]=butter(7,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xc=filter(b,a,x2);
% subplot(6, 3, 12)
% plot(t,xc);title('seno 2 filtro 6000')
% 
% %aplicado a la tercera señal
% fc=2000;
% fs=5000;
% [b,a]=butter(6,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xa=filter(b,a,x3);
% subplot(6, 3, 13)
% plot(t,xa);title('seno 3 filtro 2000')
% 
% fc=4000;
% fs=5000;
% [b,a]=butter(5,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xb=filter(b,a,x3);
% subplot(6, 3, 14)
% 
% plot(t,xb);title('seno 3 filtro 4000')
% 
% fc=6000;
% fs=5000;
% [b,a]=butter(7,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xc=filter(b,a,x3);
% subplot(6, 3, 15)
% plot(t,xc);title('seno 3 filtro 6000')
% 
% %aplicado a la señal completa
% 
% fc=2000;
% fs=5000;
% [b,a]=butter(6,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xa=filter(b,a,xf);
% subplot(6, 3, 16)
% plot(t,xa);title('seno Final filtro 2000')
% 
% fc=4000;
% fs=5000;
% [b,a]=butter(5,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xb=filter(b,a,xf);
% subplot(6, 3, 17)
% 
% plot(t,xb);title('seno Final filtro 4000')
% 
% fc=6000;
% fs=5000;
% [b,a]=butter(7,fc/(fs/.01), 'High');
% %freqz(b,a,[],fs);
% xc=filter(b,a,xf);
% subplot(6, 3, 18)
% plot(t,xc);title('seno Final filtro 6000')
% 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

                  %Chevyshev

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs=500000;
f=1000;
nCyl=5;
t=0:.5/fs:nCyl*1/f;
x1= 5*sin(2*pi*f*t);
subplot(6,3,1)
plot(t,x1);title('seno1 de 1000');
hold off

f=3000;
x2=5*sin(2*pi*f*t);
subplot(6,3,2)
plot(t,x2);title('seno2 de 3000');

f=5000;
x3=5*sin(2*pi*f*t);
subplot(6,3,3)
plot(t,x3);title('seno3 de 5000')

xf=x1+x2+x3;
subplot(6,3,[4,6])
plot(t,xf);title('seno Final')

%   1) primera señal 
fc=2000;
fs=7000;
[b,a] = cheby1(4,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xa=filter(b,a,x1);
subplot(6,3,7)
plot(t,xa);title('seno 1 filtro 2000')
hold on
plot(t,0.4*x1);
hold off

fc=4000;
fs=7000;
[b,a] = cheby1(5,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xb=filter(b,a,x1);
subplot(6,3,8)
plot(t,xb);title('seno 1 filtro 4000')
hold on
plot(t,0.4*x1);
hold off

fc=6000;
fs=7000;
[b,a]= cheby1(7,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xc=filter(b,a,x1);
subplot(6,3,9)
plot(t,xc);title('seno 1 filtro 6000')
hold on
plot(t,0.4*x1);
hold off


%   2) Segunda señal

fc=2000;
fs=7000;
[b,a] = cheby1(4,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xa=filter(b,a,x2);
subplot(6,3,10)
plot(t,xa);title('seno 2 filtro 2000')
hold on
plot(t,x2);
hold off

fc=4000;
fs=7000;
[b,a] = cheby1(5,10,(fc+250)/(fs/.01), 'High');
%freqz(b,a,[],fs)
xb=filter(b,a,x2);
subplot(6,3,11)
plot(t,xb);title('seno 2 filtro 4000')
hold on
plot(t,0.7*x2);
hold off

fc=4000;
fs=7000;
[b,a]= cheby1(7,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xc=filter(b,a,x2);
subplot(6,3,12)
plot(t,xc);title('seno 2 filtro 6000')
hold on
plot(t,0.7*x2);
hold off


%   3) Terccera señal
fc=6000;
fs=7000;
[b,a] = cheby1(4,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xa=filter(b,a,x3);
subplot(6,3,13)
plot(t,xa);title('seno 3 filtro 2000')
hold on
plot(t,x3);
hold off

fc=6000;
fs=7000;
[b,a] = cheby1(5,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xb=filter(b,a,x3);
subplot(6,3,14)
plot(t,xb);title('seno 3 filtro 4000')
hold on
plot(t,x3);
hold off

fc=6000;
fs=7000;
[b,a]= cheby1(7,10,(fc+1200)/(fs/.01), 'High');
%freqz(b,a,[],fs)
xc=filter(b,a,x3);
subplot(6,3,15)
plot(t,xc);title('seno 3 filtro 6000')
hold on
plot(t,0.9*x3);
hold off

%   4) suma de señales
fc=2000;
fs=7000;
[b,a] = cheby1(4,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xa=filter(b,a,xf);
subplot(6,3,16)
plot(t,xa);title('seno Final filtro 2000')
hold on
plot(t,0.4*xf);
hold off

fc=4000;
fs=7000;
[b,a] = cheby1(5,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xb=filter(b,a,xf);
subplot(6,3,17)
plot(t,xb);title('seno Final filtro 4000')
hold on
plot(t,0.5*xf);
hold off

fc=6000;
fs=7000;
[b,a]= cheby1(7,10,fc/(fs/.01), 'High');
%freqz(b,a,[],fs)
xc=filter(b,a,xf);
subplot(6,3,18)
plot(t,xc);title('seno Final filtro 6000')
hold on
plot(t,0.6*xf);
hold off