% %
% %Práctica 10 - M. Verduzco
% %
% 
% 
% 
% %Ejercicio #1
% A1 = 2; %db's
% A2 = 14; %db's
% Wc = 1/(2*pi); %rad/seg
% Wp1 = 2/(2*pi); %rad/seg
% Wp2 = 1.5/(2*pi); %rad/seg
% Wp3 = 1.3/(2*pi); %rad/seg
% 
% [BN1, BWn1] = buttord(Wp1, Wc, A1, A2);
% [BN2, BWn2] = buttord(Wp2, Wc, A1, A2);
% [BN3, BWn3] = buttord(Wp3, Wc, A1, A2);
% 
% [CN1, CWn1] = cheb1ord(Wp1, Wc, A1, A2);
% [CN2, CWn2] = cheb1ord(Wp2, Wc, A1, A2);
% [CN3, CWn3] = cheb1ord(Wp3, Wc, A1, A2);
% 
% [EN1, EWn1] = ellipord(Wp1, Wc, A1, A2);
% [EN2, EWn2] = ellipord(Wp2, Wc, A1, A2);
% [EN3, EWn3] = ellipord(Wp1, Wc, A1, A2);
% 
% 
% 
% 
% %Ejercicio #2
% [z11, p11, k11] = buttap(BN1);
% [a11, b11] = zp2tf(z11, p11, k11);
% h11 = tf(a11, b11)
% 
% [z12, p12, k12] = buttap(BN2);
% [a12, b12] = zp2tf(z12, p12, k12);
% h12 = tf(a12, b12)
% 
% [z13, p13, k13] = buttap(BN3);
% [a13, b13] = zp2tf(z13, p13, k13);
% h13 = tf(a13, b13)
% 
% 
% 
% [z21, p21, k21] = cheb1ap(CN1, Wp1);
% [a21, b21] = zp2tf(z21, p21, k21);
% h21 = tf(a21, b21)
% 
% [z22, p22, k22] = cheb1ap(CN2, Wp2);
% [a22, b22] = zp2tf(z22, p22, k22);
% h22 = tf(a22, b22)
% 
% [z23, p23, k23] = cheb1ap(CN3, Wp3);
% [a23, b23] = zp2tf(z23, p23, k23);
% h23 = tf(a23, b23)
% 
% 
% 
% [z31, p31, k31] = ellipap(EN1, Wc, Wp1);
% [a31, b31] = zp2tf(z31, p31, k31);
% h31 = tf(a31, b31)
% 
% [z32, p32, k32] = ellipap(EN2, Wc, Wp2);
% [a32, b32] = zp2tf(z32, p32, k32);
% h32 = tf(a32, b32)
% 
% [z33, p33, k33] = ellipap(EN3, Wc, Wp3);
% [a33, b33] = zp2tf(z33, p33, k33);
% h33 = tf(a33, b33)
% 
% 




% Práctica del 16 de Noviembre de 2022

%Ejercicio 1


fs = 500000;
f = 500;
nCyl = 5;
t = 0:1/fs:nCyl*1/f;
x1 = 5*sin(500*t*pi);
x2 = 5*sin(1000*t*pi);
x3 = 5*sin(3000*t*pi);
x = x1 + x2 + x3;
plot(x);

n = 10;
f1 = 700;
f2 = 2000;
f3 = 4000;

% [zb,pb,kb] = butter(10,f/f1,'low');
% [bb, aa] = zp2tf(zb,pb,kb)
% y = filter(bb,aa ,x);
% %fvtool(sol1, "Analysis", "freq")
% subplot(4,1,2)
% plot(y)
% 
% [zb,pb,kb] = butter(10,f/f2,'low');
% [bb, aa] = zp2tf(zb,pb,kb);
% %fvtool(sol2, "Analysis", "freq")
% y = filter(bb,aa ,x);
% subplot(4,1,3)
% plot(y)
% 
% [zb,pb,kb] = butter(10,f/f3,'low');
% [bb, aa] = zp2tf(zb,pb,kb);
% %fvtool(sol3, "Analysis", "freq")
% y = filter(bb,aa ,x);
% subplot(4,1,4)
% plot(y)




