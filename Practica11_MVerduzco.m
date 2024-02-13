
%
%Práctica 11 - M. Verduzco
%

fs=500000;
f=500;
nCyl=5;
t=0:.5/fs:nCyl*1/f;
x1=sin(2*pi*f*t);
subplot(3, 3, 1)
plot(t,x1);title('seno1');

f=1000;
x2=sin(2*pi*f*t);
subplot(3, 3, 2)
plot(t,x2);title('seno2');

f=3000;
x3=sin(2*pi*f*t);
subplot(3, 3, 3)
plot(t,x3);title('seno3')
subplot(3, 3, [4,6])

xf=x1+x2+x3;
plot(t,xf);title('seno Final')


fc=700;
fs=5000;
[b,a]=butter(6,fc/(fs/.01));
%freqz(b,a,[],fs);
xa=filter(b,a,x3);
subplot(3, 3, 7)
plot(t,xa);title('seno Final filtro 700')

fc=2000;
fs=5000;
[b,a]=butter(5,fc/(fs/.01));
%freqz(b,a,[],fs);
xb=filter(b,a,xf);
subplot(3, 3, 8)

plot(t,xb);title('seno Final filtro 2000')

fc=4000;
fs=5000;
[b,a]=butter(7,fc/(fs/.01));
%freqz(b,a,[],fs);
xc=filter(b,a,xf);
subplot(3, 3, 9)
plot(t,xc);title('seno Final filtro 4000')
