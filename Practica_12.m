
%
%Práctica 12 - M. Verduzco
%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                   Chevyshev
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% fs=500000;
% f=500;
% nCyl=5;
% t=0:.5/fs:nCyl*1/f;
% x1= sin(2*pi*f*t);
% subplot(6,3,1)
% plot(t,x1);title('seno1');
% hold off
% 
% f=2000;
% x2=sin(2*pi*f*t);
% subplot(6,3,2)
% plot(t,x2);title('seno2');
% 
% f=4000;
% x3=sin(2*pi*f*t);
% subplot(6,3,3)
% plot(t,x3);title('seno3')
% 
% xf=x1+x2+x3;
% subplot(6,3,[4,6])
% plot(t,xf);title('seno Final')
% 
% %   1) f = 500 Hz
% fc=1000;
% fs=6000;
% [b,a] = cheby1(4,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xa=filter(b,a,x1);
% subplot(6,3,7)
% plot(t,xa);title('seno Final filtro 500')
% hold on
% plot(t,0.4*x1);
% hold off
% 
% fc=3000;
% fs=6000;
% [b,a] = cheby1(5,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xb=filter(b,a,x1);
% subplot(6,3,8)
% plot(t,xb);title('seno Final filtro 3000')
% hold on
% plot(t,0.4*x1);
% hold off
% 
% fc=5000;
% fs=6000;
% [b,a]= cheby1(7,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xc=filter(b,a,x1);
% subplot(6,3,9)
% plot(t,xc);title('seno Final filtro 5000')
% hold on
% plot(t,0.4*x1);
% hold off
% 
% 
% %   2) f = 2000 Hz
% 
% fc=1000;
% fs=6000;
% [b,a] = cheby1(4,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xa=filter(b,a,x2);
% subplot(6,3,10)
% plot(t,xa);title('seno Final filtro 500')
% hold on
% plot(t,x2);
% hold off
% 
% fc=3000;
% fs=5000;
% [b,a] = cheby1(5,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xb=filter(b,a,x2);
% subplot(6,3,11)
% plot(t,xb);title('seno Final filtro 3000')
% hold on
% plot(t,0.7*x2);
% hold off
% 
% fc=5000;
% fs=6000;
% [b,a]= cheby1(7,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xc=filter(b,a,x2);
% subplot(6,3,12)
% plot(t,xc);title('seno Final filtro 5000')
% hold on
% plot(t,0.7*x2);
% hold off
% 
% 
% %   3) f = 4000 Hz
% fc=1000;
% fs=6000;
% [b,a] = cheby1(4,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xa=filter(b,a,x3);
% subplot(6,3,13)
% plot(t,xa);title('seno Final filtro 1000')
% hold on
% plot(t,x3);
% hold off
% 
% fc=3000;
% fs=5000;
% [b,a] = cheby1(5,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xb=filter(b,a,x3);
% subplot(6,3,14)
% plot(t,xb);title('seno Final filtro 3000')
% hold on
% plot(t,x3);
% hold off
% 
% fc=5000;
% fs=6000;
% [b,a]= cheby1(7,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xc=filter(b,a,x3);
% subplot(6,3,15)
% plot(t,xc);title('seno Final filtro 5000')
% hold on
% plot(t,0.9*x3);
% hold off
% 
% %   4) suma
% fc=1000;
% fs=6000;
% [b,a] = cheby1(4,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xa=filter(b,a,xf);
% subplot(6,3,16)
% plot(t,xa);title('seno Final filtro 1000')
% hold on
% plot(t,0.4*xf);
% hold off
% 
% fc=3000;
% fs=5000;
% [b,a] = cheby1(5,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xb=filter(b,a,xf);
% subplot(6,3,17)
% plot(t,xb);title('seno Final filtro 3000')
% hold on
% plot(t,0.5*xf);
% hold off
% 
% fc=5000;
% fs=6000;
% [b,a]= cheby1(7,10,fc/(fs/.01));
% %freqz(b,a,[],fs)
% xc=filter(b,a,xf);
% subplot(6,3,18)
% plot(t,xc);title('seno Final filtro 5000')
% hold on
% plot(t,0.6*xf);
% hold off


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %
% %                     Elíptico
% %
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fs=500000;
f=500;
nCyl=5;
t=0:.5/fs:nCyl*1/f;
x1= sin(2*pi*f*t);
subplot(6,3,1)
plot(t,x1);title('seno1');
hold off

f=2000;
x2=sin(2*pi*f*t);
subplot(6,3,2)
plot(t,x2);title('seno2');

f=4000;
x3=sin(2*pi*f*t);
subplot(6,3,3)
plot(t,x3);title('seno3')

xf=x1+x2+x3;
subplot(6,3,[4,6])
plot(t,xf);title('seno Final')

%   1) f = 500 Hz
fc=1000;
fs=6000;
[b,a] = ellip(4,10,50,fc/(fs/.01));
%freqz(b,a,[],fs)
xa=filter(b,a,x1);
subplot(6,3,7)
plot(t,xa);title('seno Final filtro 500')
hold on
plot(t,0.4*x1);
hold off

fc=3000;
fs=6000;
[b,a] = ellip(5,10, 50,fc/(fs/.01));
%freqz(b,a,[],fs)
xb=filter(b,a,x1);
subplot(6,3,8)
plot(t,xb);title('seno Final filtro 3000')
hold on
plot(t,0.4*x1);
hold off

fc=5000;
fs=6000;
[b,a]= ellip(7,10, 50,fc/(fs/.01));
%freqz(b,a,[],fs)
xc=filter(b,a,x1);
subplot(6,3,9)
plot(t,xc);title('seno Final filtro 5000')
hold on
plot(t,0.4*x1);
hold off


%   2) f = 2000 Hz

fc=1000;
fs=6000;
[b,a] = ellip(4,10, 50,fc/(fs/.01));
%freqz(b,a,[],fs)
xa=filter(b,a,x2);
subplot(6,3,10)
plot(t,xa);title('seno Final filtro 500')
hold on
plot(t,x2);
hold off

fc=3000;
fs=5000;
[b,a] = ellip(5,10, 50,fc/(fs/.01));
%freqz(b,a,[],fs)
xb=filter(b,a,x2);
subplot(6,3,11)
plot(t,xb);title('seno Final filtro 3000')
hold on
plot(t,0.7*x2);
hold off

fc=5000;
fs=6000;
[b,a]= ellip(7,10, 50,fc/(fs/.01));
%freqz(b,a,[],fs)
xc=filter(b,a,x2);
subplot(6,3,12)
plot(t,xc);title('seno Final filtro 5000')
hold on
plot(t,0.7*x2);
hold off


%   3) f = 4000 Hz
fc=1000;
fs=6000;
[b,a] = ellip(4,10,50,fc/(fs/.01));
%freqz(b,a,[],fs)
xa=filter(b,a,x3);
subplot(6,3,13)
plot(t,xa);title('seno Final filtro 1000')
hold on
plot(t,x3);
hold off

fc=3000;
fs=5000;
[b,a] = ellip(5,10,50,fc/(fs/.01));
%freqz(b,a,[],fs)
xb=filter(b,a,x3);
subplot(6,3,14)
plot(t,xb);title('seno Final filtro 3000')
hold on
plot(t,x3);
hold off

fc=5000;
fs=6000;
[b,a]= ellip(7,10,50,fc/(fs/.01));
%freqz(b,a,[],fs)
xc=filter(b,a,x3);
subplot(6,3,15)
plot(t,xc);title('seno Final filtro 5000')
hold on
plot(t,0.9*x3);
hold off

%   4) suma
fc=1000;
fs=6000;
[b,a] = ellip(4,10,50,fc/(fs/.01));
%freqz(b,a,[],fs)
xa=filter(b,a,xf);
subplot(6,3,16)
plot(t,xa);title('seno Final filtro 1000')
hold on
plot(t,0.4*xf);
hold off

fc=3000;
fs=5000;
[b,a] = ellip(5,10,50,fc/(fs/.01));
%freqz(b,a,[],fs)
xb=filter(b,a,xf);
subplot(6,3,17)
plot(t,xb);title('seno Final filtro 3000')
hold on
plot(t,0.5*xf);
hold off

fc=5000;
fs=6000;
[b,a]= ellip(7,10,50,fc/(fs/.01));
%freqz(b,a,[],fs)
xc=filter(b,a,xf);
subplot(6,3,18)
plot(t,xc);title('seno Final filtro 5000')
hold on
plot(t,0.6*xf);
hold off

